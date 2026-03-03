#!/bin/bash

#SBATCH --job-name=train_qwen_lora
#SBATCH --output=train_qwen_lora.log
#SBATCH --error=train_qwen_lora.log
#SBATCH --time=48:00:00
#SBATCH --account=cml-director
#SBATCH --partition=cml-director
#SBATCH --qos=cml-high_long
#SBATCH --gres=gpu:a100:1
#SBATCH --cpus-per-task=6
#SBATCH --mem=64G

source /etc/profile.d/modules.sh
module add cuda/12.4.1
module add gcc/11.2.0

source /fs/nexus-scratch/yliang17/miniconda3/bin/activate qwen

export HF_HOME="/fs/nexus-projects/wilddiffusion/cache"
export HF_DATASETS_CACHE="/fs/nexus-projects/wilddiffusion/cache"
export HF_MODULES_CACHE="/fs/nexus-projects/wilddiffusion/cache"
export TRANSFORMERS_CACHE="/fs/nexus-projects/wilddiffusion/cache"

export WANDB_PROJECT="TaskGen"
export DATASET="qinstruct_new"
export TASK_NAME="qwen3_qinstruct_new"
export OUTPUT_DIR="/fs/nexus-projects/wilddiffusion/vlm/llama_factory/qwen_task/${TASK_NAME}"

# envsubst < examples/train_lora/qwen2_5vl_lora_sft_qinstruct_template_envset.yaml \
#   > tmp/${TASK_NAME}.yaml

envsubst < examples/train_lora/qwen3vl_lora_sft_qinstruct_template_envset_4b.yaml \
  > temperate/${TASK_NAME}.yaml

envsubst < examples/merge_lora/qwen3vl_lora_sft_template_4b.yaml \
  > temperate/${TASK_NAME}_merge.yaml

llamafactory-cli train temperate/${TASK_NAME}.yaml
llamafactory-cli export temperate/${TASK_NAME}_merge.yaml



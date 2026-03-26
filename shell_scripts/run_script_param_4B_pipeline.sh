#!/bin/bash

#SBATCH --job-name=train_qwen_lora
#SBATCH --output=train_qwen_lora.log
#SBATCH --error=train_qwen_lora.log
#SBATCH --time=16:00:00
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

source /fs/nexus-scratch/yliang17/Research/VLA/config/key.conf

mkdir -p temperate/
envsubst < examples/train_lora/qwen3vl_lora_sft_qinstruct_template_envset_4b.yaml \
  > temperate/${TASK_NAME}.yaml

envsubst < examples/merge_lora/qwen3vl_lora_sft_template_4b.yaml \
  > temperate/${TASK_NAME}_merge.yaml

llamafactory-cli train temperate/${TASK_NAME}.yaml
llamafactory-cli export temperate/${TASK_NAME}_merge.yaml

rm -rf ${OUTPUT_DIR}

export MODEL_NAME="${MODEL_NAME:-${TASK_NAME}}"
export MERGED_MODEL_DIR="${OUTPUT_DIR}_merged"
export VLMEVAL_CONFIG="/fs/nexus-scratch/yliang17/Research/VLM/VLMEvalKit/vlmeval/config.py"

python3 - <<'PY'
import os
import re
from pathlib import Path

config_path = Path(os.environ["VLMEVAL_CONFIG"])
model_name = os.environ["MODEL_NAME"]
model_path = os.environ["MERGED_MODEL_DIR"]

entry = f'''    "{model_name}": partial(
        Qwen3VLChat,
        model_path="{model_path}",
        use_custom_prompt=False,
        use_vllm=False,
        do_sample=False,
        temperature=0.7,
        max_new_tokens=4096,
        repetition_penalty=1.0,
        presence_penalty=1.5,
        top_p=0.8,
        top_k=20
    ),
'''

text = config_path.read_text()
series_match = re.search(r"(qwen3vl_series\s*=\s*\{)(.*?)(\n\})", text, flags=re.S)
if series_match is None:
    raise RuntimeError(f"Failed to locate qwen3vl_series in {config_path}")

body = series_match.group(2)
entry_pattern = re.compile(rf'\n    \"{re.escape(model_name)}\": partial\(\n(?:        .*\n)+?    \),\n', flags=re.S)

if entry_pattern.search(body):
    body = entry_pattern.sub("\n" + entry, body, count=1)
else:
    body = body.rstrip() + "\n\n" + entry.rstrip("\n")

updated = text[:series_match.start(2)] + body + text[series_match.end(2):]
if updated != text:
    config_path.write_text(updated)
PY

cd /fs/nexus-scratch/yliang17/Research/VLM/VLMEvalKit

python run.py --data MMStar --model "${MODEL_NAME}" --mode infer

# done
cd /fs/nexus-scratch/yliang17/Research/VLM/VLM_toolset/

echo "Run evaluation for ${MODEL_NAME} on MMStar"
python3 eval/mmstar/call_gpt_batch.py --model_name=${MODEL_NAME} --model="gpt-5-nano"


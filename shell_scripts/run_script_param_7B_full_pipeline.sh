#!/bin/bash

#SBATCH --job-name=train_qwen25_7b_full
#SBATCH --output=train_qwen25_7b_full.log
#SBATCH --error=train_qwen25_7b_full.log
#SBATCH --time=48:00:00
#SBATCH --account=cml-director
#SBATCH --partition=cml-director
#SBATCH --qos=cml-high_long
#SBATCH --gres=gpu:a100:2
#SBATCH --cpus-per-task=16
#SBATCH --mem=128G

source /etc/profile.d/modules.sh
module add cuda/12.4.1
module add gcc/11.2.0

source /fs/nexus-scratch/yliang17/miniconda3/bin/activate qwen

export HF_HOME="/fs/nexus-projects/wilddiffusion/cache"
export HF_DATASETS_CACHE="/fs/nexus-projects/wilddiffusion/cache"
export HF_MODULES_CACHE="/fs/nexus-projects/wilddiffusion/cache"
export TRANSFORMERS_CACHE="/fs/nexus-projects/wilddiffusion/cache"

export WANDB_PROJECT="TaskGen"
export DATASET="sat_mix_qa_only_50k"
export TASK_NAME="qwen25_7b_full_sat_mix_qa_only_50k"
export OUTPUT_DIR="/fs/nexus-projects/wilddiffusion/vlm/llama_factory/qwen_task/${TASK_NAME}"

source /fs/nexus-scratch/yliang17/Research/VLA/config/key.conf

mkdir -p temperate/
envsubst < examples/train_full/qwen25vl_full_sft_template_envset_7b.yaml \
  > temperate/${TASK_NAME}.yaml

FORCE_TORCHRUN=1 llamafactory-cli train temperate/${TASK_NAME}.yaml

export MODEL_NAME="${MODEL_NAME:-${TASK_NAME}}"
export MERGED_MODEL_DIR="${OUTPUT_DIR}"
export VLMEVAL_CONFIG="/fs/nexus-scratch/yliang17/Research/VLM/VLMEvalKit/vlmeval/config.py"

python3 - <<'PY'
import os
import re
from pathlib import Path

config_path = Path(os.environ["VLMEVAL_CONFIG"])
model_name = os.environ["MODEL_NAME"]
model_path = os.environ["MERGED_MODEL_DIR"]

entry = f'''    "{model_name}": partial(
        Qwen2VLChat,
        model_path="{model_path}",
        min_pixels=1280 * 28 * 28,
        max_pixels=16384 * 28 * 28,
        use_custom_prompt=False,
    ),
'''

text = config_path.read_text()
series_match = re.search(r"(qwen2vl_series\s*=\s*\{)(.*?)(\n\})", text, flags=re.S)
if series_match is None:
    raise RuntimeError(f"Failed to locate qwen2vl_series in {config_path}")

body = series_match.group(2)
entry_pattern = re.compile(rf'\n    \"{re.escape(model_name)}\": partial\(\n(?:        .*\n)+?    \),\n')

if entry_pattern.search(body):
    body = entry_pattern.sub("\n" + entry, body, count=1)
else:
    body = body.rstrip() + "\n\n" + entry.rstrip("\n")

updated = text[:series_match.start(2)] + body + text[series_match.end(2):]
if updated != text:
    config_path.write_text(updated)
PY

cd /fs/nexus-scratch/yliang17/Research/VLM/VLMEvalKit

python run.py --data CV-Bench-2D CV-Bench-3D --model "${MODEL_NAME}"

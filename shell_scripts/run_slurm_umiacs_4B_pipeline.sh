#!/bin/bash

# Check if the required arguments are provided
if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <task_name> <data_name> [num_epochs] [learning_rate]"
  exit 1
fi

TASK_NAME=$1
DATASET=$2
NUM_EPOCHS=${3:-}
LEARNING_RATE=${4:-}
export TASK_NAME

TMP_SCRIPT=$(mktemp "$(pwd)/${TASK_NAME}.XXXXXX.slurm")
cat <<EOL > $TMP_SCRIPT
#!/bin/bash

#SBATCH --job-name=${TASK_NAME}
#SBATCH --output=$(pwd)/slurm_output/${TASK_NAME}.log
#SBATCH --error=$(pwd)/slurm_output/${TASK_NAME}.log
#SBATCH --time=40:00:00
#SBATCH --account=scavenger
#SBATCH --partition=scavenger
#SBATCH --gres=gpu:rtxa5000:1
#SBATCH --cpus-per-task=6
#SBATCH --mem=128G

cd $(pwd)

EOL

if [ ! -d "$(pwd)/slurm_output" ]; then
  mkdir -p "$(pwd)/slurm_output"
fi


grep -v "^#" shell_scripts/run_script_param_4B_pipeline.sh \
  | sed -e "s/DATASET=.*/DATASET=${DATASET}/" \
        -e "s/TASK_NAME=.*/TASK_NAME=${TASK_NAME}/" \
        ${NUM_EPOCHS:+-e "s/NUM_EPOCHS=.*/NUM_EPOCHS=\"${NUM_EPOCHS}\"/"}  \
        ${LEARNING_RATE:+-e "s/LEARNING_RATE=.*/LEARNING_RATE=\"${LEARNING_RATE}\"/"}  \
  >> $TMP_SCRIPT

sbatch $TMP_SCRIPT

rm "$TMP_SCRIPT"

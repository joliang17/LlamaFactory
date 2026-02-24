#!/bin/bash

# bash shell_scripts/run_slurm_umiacs.sh "qwen25_qinstruct_new"  "qinstruct_new"  

# bash shell_scripts/run_slurm_umiacs.sh "qwen25_qinstruct_new_only"  "qinstruct_new"  
# bash shell_scripts/run_slurm_umiacs.sh "qwen25_qinstruct_ori_only"  "qinstruct_ori"  

bash shell_scripts/run_slurm_umiacs.sh "qwen3_qinstruct_ori_qa"  "qinstruct_ori_qa,qinstruct_ori_qa"  
bash shell_scripts/run_slurm_umiacs.sh "qwen3_qinstruct_ori_aq"  "qinstruct_ori_qa,qinstruct_ori_aq"
bash shell_scripts/run_slurm_umiacs.sh "qwen3_qinstruct_ori_iqa"  "qinstruct_ori_qa,qinstruct_ori_iqa"



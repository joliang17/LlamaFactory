#!/bin/bash

# bash shell_scripts/run_slurm_umiacs.sh "qwen25_qinstruct_new"  "qinstruct_new"  

# bash shell_scripts/run_slurm_umiacs.sh "qwen25_qinstruct_new_only"  "qinstruct_new"  
# bash shell_scripts/run_slurm_umiacs.sh "qwen25_qinstruct_ori_only"  "qinstruct_ori"  

# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_ori_qa_6k"  "qinstruct_ori_qa_6k,qinstruct_ori_qa_6k"  
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_ori_aq_6k"  "qinstruct_ori_qa_3k,qinstruct_ori_aq_3k"
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_ori_iqa_6k" "qinstruct_ori_qa_3k,qinstruct_ori_iqa_3k"


# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_ori_qa_4k"  "qinstruct_ori_qa_4k"  
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_ori_aq_4k"  "qinstruct_ori_qa_2k,qinstruct_ori_aq_2k"
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_ori_iqa_4k" "qinstruct_ori_qa_2k,qinstruct_ori_iqa_2k"
bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_ori_aq_iqa_4k" "qinstruct_ori_qa_2k,qinstruct_ori_iqa_1k,qinstruct_ori_aq_1k"

# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_new_qa_4k"  "qinstruct_ori_qa_2k,qinstruct_new_qa_2k"  
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_new_aq_4k"  "qinstruct_ori_qa_2k,qinstruct_new_aq_2k"
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_new_iqa_4k" "qinstruct_ori_qa_2k,qinstruct_new_iqa_2k"
bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_new_aq_iqa_4k" "qinstruct_ori_qa_2k,qinstruct_new_iqa_1k,qinstruct_new_aq_1k"


# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_geo_oqa_2k"  "geo_oq_oa,geo_oq_oa_add"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_geo_oqa_oaq_2k"  "geo_oq_oa,geo_oa_oq"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_geo_naq_nqa_2k"  "geo_oa_nq,geo_nq_na"  

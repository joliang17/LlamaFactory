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
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_ori_aq_iqa_4k" "qinstruct_ori_qa_2k,qinstruct_ori_iqa_1k,qinstruct_ori_aq_1k"

# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_new_qa_4k"  "qinstruct_ori_qa_2k,qinstruct_new_qa_2k"  
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_new_aq_4k"  "qinstruct_ori_qa_2k,qinstruct_new_aq_2k"
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_new_iqa_4k" "qinstruct_ori_qa_2k,qinstruct_new_iqa_2k"
# bash shell_scripts/run_slurm_umiacs.sh "qwen3vl_8B_qinstruct_new_aq_iqa_4k" "qinstruct_ori_qa_2k,qinstruct_new_iqa_1k,qinstruct_new_aq_1k"


# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_geo_oqa_2k"  "geo_oq_oa,geo_oq_oa_add"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_geo_oqa_oaq_2k"  "geo_oq_oa,geo_oa_oq"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_geo_naq_nqa_2k"  "geo_oa_nq,geo_nq_na"  


# # our QA vs original QA vs mmevol QA
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_mme_qa_12k"  "qinstruct_mme_qa_12k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_qa_12k"  "qinstruct_ori_qa_12k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_12k"  "qinstruct_new_qa_12k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_2turn_qa_12k"  "qinstruct_new_2turn_qa_12k"  

# # 3
# # QA vs AQ vs IQA
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_qa_aq_24k"  "qinstruct_ori_qa_12k,qinstruct_ori_aq_12k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_mme_qa_aq_24k"  "qinstruct_mme_qa_12k,qinstruct_mme_aq_12k"  



# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_24k"  "qinstruct_new_qa_24k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_aq_24k"  "qinstruct_new_aq_24k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_aq_24k"  "qinstruct_new_aq_12k,qinstruct_new_qa_12k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_iqa_aq_24k"  "qinstruct_new_qa_8k,qinstruct_new_aq_8k,qinstruct_new_iqa_8k"  


# # 50% ori + 50% our
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_qa_24k"  "qinstruct_ori_qa_24k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_halfnew_qa_24k"  "qinstruct_ori_qa_12k,qinstruct_new_2turn_qa_12k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_halfnew1_qa_24k"  "qinstruct_ori_qa_12k,qinstruct_new_qa_12k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_halfmme_qa_24k"  "qinstruct_ori_qa_12k,qinstruct_mme_qa_12k"  


# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_qa_aq_24k"  "qinstruct_ori_qa_12k,qinstruct_ori_aq_12k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_mme_qa_aq_24k"  "qinstruct_mme_qa_12k,qinstruct_mme_aq_12k"  

# 2
# # 1turn vs 2turn
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_2turn_qa_24k"  "qinstruct_new_2turn_qa_24k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_2turn_aq_24k"  "qinstruct_new_2turn_aq_24k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_2turn_aq_24k"  "qinstruct_new_2turn_qa_12k,qinstruct_new_2turn_aq_12k"  

# # generation ability
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_qa_iqa_aq_24k"  "qinstruct_ori_qa_8k,qinstruct_ori_aq_8k,qinstruct_ori_iqa_8k"  

# # scale size
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_aq_4k"  "qinstruct_new_qa_2k,qinstruct_new_aq_2k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_aq_16k"  "qinstruct_new_qa_8k,qinstruct_new_aq_8k"  
# # bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_aq_24k"  "qinstruct_new_qa_12k,qinstruct_new_aq_12k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_aq_48k"  "qinstruct_new_qa_24k,qinstruct_new_aq_24k"  


# 4B iqa, qa, aq + special prefix: consistency
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_qa_8k"  "qinstruct_ori_qa_8k"  

# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_8k"  "qinstruct_new_qa_8k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_aq_8k"  "qinstruct_new_qa_8k,qinstruct_new_aq_8k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_qa_aq_iqa_8k"  "qinstruct_new_qa_8k,qinstruct_new_aq_8k,qinstruct_new_iqa_8k"  

# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new2_qa_8k"  "qinstruct_new2_qa_8k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new2_qa_aq_8k"  "qinstruct_new2_qa_8k,qinstruct_new2_aq_8k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new2_qa_aq_iqa_8k"  "qinstruct_new2_qa_8k,qinstruct_new2_aq_8k,qinstruct_new2_iqa_8k"  

bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_mix_qa_aq_8k"  "qinstruct_new_mix_qa_aq_8k"  
bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_mix_qa_aq_iqa_8k"  "qinstruct_new_mix_qa_aq_iqa_8k"  

bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_mix_qa_aq_8k"  "qinstruct_ori_mix_qa_aq_8k"  
bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_mix_qa_aq_iqa_8k"  "qinstruct_ori_mix_qa_aq_iqa_8k"  

# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_qa_aq_8k"  "qinstruct_ori_qa_8k,qinstruct_ori_aq_8k"  
# bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_qa_aq_iqa_8k"  "qinstruct_ori_qa_8k,qinstruct_ori_aq_8k,qinstruct_ori_iqa_8k"  

# change ratio
bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_mix_qa_aq_iqa_8k_052525"  "qinstruct_new_mix_qa_aq_iqa_8k_052525"  
bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_mix_qa_aq_iqa_8k_052525"  "qinstruct_ori_mix_qa_aq_iqa_8k_052525"  

bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_both_mix_qa_aq_iqa_8k_052525"  "qinstruct_new_mix_qa_aq_iqa_4k_052525,qinstruct_new_closed_mix_qa_aq_iqa_4k_052525"  


bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_mix_qa_aq_iqa_4k_052525_v2"  "qinstruct_new_mix_qa_aq_iqa_4k_052525_prompt2"  
bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_mix_qa_aq_iqa_8k_052525_v2"  "qinstruct_new_mix_qa_aq_iqa_8k_052525_prompt2"  


bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_mix_qa_aq_iqa_8k_052525_v2"  "qinstruct_ori_mix_qa_aq_iqa_8k_052525_prompt2"  

bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_new_mix_qa_iqa_8k_067033_v2"  "qinstruct_new_mix_qa_iqa_8k_067033_prompt2"  
bash shell_scripts/run_slurm_umiacs_4B.sh "qwen3vl_4B_qinstruct_ori_mix_qa_iqa_8k_067033_v2"  "qinstruct_ori_mix_qa_iqa_4k_067033_prompt2"  



# compare with mme data
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_mme_mix_qa_aq_iqa_8k_052525_v2"  "qinstruct_mme_mix_qa_aq_iqa_8k_052525_prompt2"  

# compare with 1 round
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_new_1round_mix_qa_aq_iqa_8k_052525"  "qinstruct_new_1round_mix_qa_aq_iqa_8k_052525_prompt2"  

# compare with more data
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_new_mix_qa_aq_iqa_16k_052525_v2"  "qinstruct_new_mix_qa_aq_iqa_16k_052525_prompt2"  
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_ori_mix_qa_aq_iqa_16k_052525_v2"  "qinstruct_ori_mix_qa_aq_iqa_16k_052525_prompt2"  


# bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_new_mix_qa_aq_iqa_8k_052525_v2"  "qinstruct_new_mix_qa_aq_iqa_8k_052525_prompt2"  

# bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_new_mix_qa_iqa_8k_067033_v2"  "qinstruct_new_mix_qa_iqa_8k_067033_prompt2" 

bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_new_qa_only_4k_v2"  "qinstruct_new_qa_only_4k_prompt2"  

bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_new_qa_only_6k_v2"  "qinstruct_new_qa_only_6k_prompt2"  


# bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_ori_mix_qa_aq_iqa_8k"  "qinstruct_ori_mix_qa_aq_iqa_8k"


# transferability experiments: qa vs qa+aq vs qa+iqa, same vs different images

# ── ORI source ────────────────────────────────────────────────────────────────
# # Exp 1: qa+aq, different images
# bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_ori_mix_qa_aq_8k_disjoint"  "transfer_ori_mix_qa_aq_8k_disjoint"
# Exp 2: qa+iqa, different images
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_ori_mix_qa_iqa_8k_disjoint"  "transfer_ori_mix_qa_iqa_8k_disjoint"
# Exp 3: qa only (baseline)
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_ori_mix_qa_8k"  "transfer_ori_mix_qa_8k"
# # Exp 4: qa+aq, same images
# bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_ori_mix_qa_aq_8k_shared"  "transfer_ori_mix_qa_aq_8k_shared"
# # Exp 5: qa+iqa, same images
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_ori_mix_qa_iqa_8k_shared"  "transfer_ori_mix_qa_iqa_8k_shared"

# ── OUR source (max-round=1) ──────────────────────────────────────────────────
# Exp 1: qa+aq, different images
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_mix_qa_aq_8k_disjoint"  "transfer_our_mix_qa_aq_8k_disjoint"
# Exp 2: qa+iqa, different images
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_mix_qa_iqa_8k_disjoint"  "transfer_our_mix_qa_iqa_8k_disjoint"
# Exp 3: qa only (baseline)
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_mix_qa_8k"  "transfer_our_mix_qa_8k"
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_qa_only_8k"  "transfer_our_qa_only_8k"
# Exp 4: qa+aq, same images
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_mix_qa_aq_8k_shared"  "transfer_our_mix_qa_aq_8k_shared"
# Exp 5: qa+iqa, same images
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_mix_qa_iqa_8k_shared"  "transfer_our_mix_qa_iqa_8k_shared"

# ── OUR source v2 (shared QA pool, consistent across all variants) ───────────
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_v2_mix_qa_iqa_8k_disjoint"  "transfer_our_v2_mix_qa_iqa_8k_disjoint"
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_v2_mix_qa_iqa_8k_shared"    "transfer_our_v2_mix_qa_iqa_8k_shared"
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_v2_mix_qa_aq_8k_disjoint"   "transfer_our_v2_mix_qa_aq_8k_disjoint"
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_v2_mix_qa_aq_8k_shared"     "transfer_our_v2_mix_qa_aq_8k_shared"
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_v2_qa_only_5360"            "transfer_our_v2_qa_only_5360"
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_v2_qa_full_8k"              "transfer_our_v2_qa_full_8k"

# # ── GEO170K ───────────────────────────────────────────────────────────────────
# # Exp 1: geo ori qa+iqa, different images
# bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_geo_ori_mix_qa_iqa_1k_disjoint"  "transfer_geo_ori_mix_qa_iqa_1k_disjoint"
# # Exp 2: geo ori qa only
# bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_geo_ori_qa_only_1k"  "transfer_geo_ori_qa_only_1k"
# # Exp 3: geo our qa+iqa, different images
# bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_geo_our_mix_qa_iqa_1k_disjoint"  "transfer_geo_our_mix_qa_iqa_1k_disjoint"
# # Exp 4: geo our qa only
# bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_geo_our_qa_only_1k"  "transfer_geo_our_qa_only_1k"

# ── SQA ───────────────────────────────────────────────────────────────────────
# Exp 5: sqa ori qa+iqa, different images
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_sqa_ori_mix_qa_iqa_1k_disjoint"  "transfer_sqa_ori_mix_qa_iqa_1k_disjoint"
# Exp 6: sqa ori qa only
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_sqa_ori_qa_only_1k"  "transfer_sqa_ori_qa_only_1k"
# Exp 7: sqa our qa+iqa, different images
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_sqa_our_mix_qa_iqa_1k_disjoint"  "transfer_sqa_our_mix_qa_iqa_1k_disjoint"
# Exp 8: sqa our qa only
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_sqa_our_qa_only_1k"  "transfer_sqa_our_qa_only_1k"


bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_new_qa_only_6k_v2"  "qinstruct_new_qa_only_6k_prompt2"  

bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-transfer_our_v2_qa_only_5360_normal"  "transfer_our_v2_qa_only"
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-qinstruct_new_qa_only_6k_new"  "qinstruct_new_qa_only_6k_prompt2"  


bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_qa_only_10k"  "sat_mix_qa_only_10k"  
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_qa_only_20k"  "sat_mix_qa_only_20k"  
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_qa_only_30k"  "sat_mix_qa_only_30k"  
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_qa_only_40k"  "sat_mix_qa_only_40k"  
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_qa_only_50k"  "sat_mix_qa_only_50k"  

bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh "Qwen2.5-VL-3B-sat_mix_qa_only_20k_e1"  "sat_mix_qa_only_20k"  

bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_qa_only_10k_e1"  "sat_mix_qa_only_10k"  
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_qa_only_20k_e1"  "sat_mix_qa_only_20k"  
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_qa_only_30k_e1"  "sat_mix_qa_only_30k"  
bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_qa_only_50k_e1"  "sat_mix_qa_only_50k"

bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh "Qwen3-VL-4B-sat_mix_all"  "sat_mix_all"

bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh "Qwen2.5-VL-3B-sat_mix_qa_only_20k_e1"  "sat_mix_qa_only_20k"



# Qwen2.5-7B LoRA
bash shell_scripts/run_slurm_umiacs_7B_lora_pipeline.sh "Qwen2.5-VL-7B-sat_mix_qa_only_50k"  "sat_mix_qa_only_50k"

# Qwen2.5-7B Full Finetune
bash shell_scripts/run_slurm_umiacs_7B_full_pipeline.sh "Qwen2.5-VL-7B-full-sat_mix_qa_only_50k"  "sat_mix_qa_only_50k"


bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh "Qwen2.5-VL-3B-sat_mix_qa_only_20k_e1"  "sat_mix_qa_only_20k"

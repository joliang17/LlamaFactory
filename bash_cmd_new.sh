


# LoRA
# bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh   "Qwen2.5-VL-3B-lora-sat_20k_e1_5e-6"  "sat_mix_qa_only_20k" 1.0 5.0e-6

bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh   "Qwen2.5-VL-3B-lora-sat_20k_e3_5e-6"  "sat_mix_qa_only_20k" 3.0 5.0e-6

# bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh   "Qwen2.5-VL-3B-lora-sat_50k_e1_5e-6"  "sat_mix_qa_only_50k" 1.0 5.0e-6

bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh   "Qwen2.5-VL-3B-lora-sat_50k_e3_5e-6"  "sat_mix_qa_only_50k" 3.0 5.0e-6

bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh   "Qwen2.5-VL-3B-lora-sat_50k_e1_5e-5"  "sat_mix_qa_only_50k" 1.0 5.0e-5
# bash shell_scripts/run_slurm_umiacs_7B_lora_pipeline.sh "Qwen2.5-VL-7B-lora-sat_50k" "sat_mix_qa_only_50k" 2.0 1.0e-5

# Full finetune
bash shell_scripts/run_slurm_umiacs_3B_full_pipeline.sh "Qwen2.5-VL-3B-full-sat_50k_e1_5e-6" "sat_mix_qa_only_50k" 1.0 5.0e-6

bash shell_scripts/run_slurm_umiacs_3B_full_pipeline.sh "Qwen2.5-VL-3B-full-sat_50k_e3_5e-6" "sat_mix_qa_only_50k" 3.0 5.0e-6

# bash shell_scripts/run_slurm_umiacs_7B_full_pipeline.sh "Qwen2.5-VL-7B-full-sat_50k_e1_5e-6" "sat_mix_qa_only_50k" 1.0 5.0e-6


bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh   "Qwen2.5-VL-3B-lora-qinstruct_qa_full_8k_e1_5e-6"  "transfer_our_v2_qa_full_8k" 1.0 5.0e-6

bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh   "Qwen2.5-VL-3B-lora-qinstruct_qa_aq_8k_e1_5e-6"  "transfer_our_v2_mix_qa_aq_8k_disjoint" 1.0 5.0e-6

bash shell_scripts/run_slurm_umiacs_3B_pipeline.sh   "Qwen2.5-VL-3B-lora-qinstruct_qa_iqa_8k_e1_5e-6"  "transfer_our_v2_mix_qa_iqa_8k_disjoint" 1.0 5.0e-6


bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh   "Qwen3-VL-4B-lora-qinstruct_qa_full_8k_e1_5e-6"  "transfer_our_v2_qa_full_8k" 1.0 5.0e-6

bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh   "Qwen3-VL-4B-lora-qinstruct_qa_aq_8k_e1_5e-6"  "transfer_our_v2_mix_qa_aq_8k_disjoint" 1.0 5.0e-6

bash shell_scripts/run_slurm_umiacs_4B_pipeline.sh   "Qwen3-VL-4B-lora-qinstruct_qa_iqa_8k_e1_5e-6"  "transfer_our_v2_mix_qa_iqa_8k_disjoint" 1.0 5.0e-6

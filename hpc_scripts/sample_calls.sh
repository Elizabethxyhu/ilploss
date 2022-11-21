python create_multinode_jobs_rhl.py -num_task_per_process 1 -num_process_per_job 6 -task_script /home/cse/phd/csz178057/phd/srl/dual_training_hm_on_s1.py -template single_run.sh -multi_header multinode_header_rhl.sh -multi_template multinode_run_rhl.sh -single_job_file sj -multi_job_file mj -jobs_dir baseline_1p_ifa_randomseed -job_name 1pb
python create_multinode_collate_jobs.py -num_task_per_process 1 -num_process_per_job 8 -task_script /home/cse/phd/csz178057/phd/srl_new/srl/eval_code/collate_with_metrics.py -template single_run.sh -multi_header multinode_header.sh -multi_template multinode_run.sh -single_job_file sjf -multi_job_file hmj -jobs_dir sevalreplicate_5p10p -job_name sevr510 -selectos :centos=skylake -global_time 3

python create_multinode_jobs.py -num_task_per_process 1 -num_process_per_job 6 -task_script /home/cse/phd/csz178057/phd/neural-logic-machines/scripts/graph/learn_nqueens_latent.py  -template single_run.sh -multi_header multinode_header.sh -multi_template multinode_run.sh -single_job_file sj -multi_job_file mj -jobs_dir baseline_1p_ifa_randomseed -job_name sevr510 -selectos :centos=skylake -global_time 3

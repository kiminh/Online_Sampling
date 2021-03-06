#!/bin/bash
#SBATCH -t 2:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-socket=1
#SBATCH --gres=gpu:1

cd /u/holdenl/code/ts_tutorial/src
# which python
# pip install --user --upgrade pip
# pip install --user pypolyagamma numpy scipy pandas
python compare.py 0.1 1000 ../outputs/compare_time_0_1_trials_1000/seed_$SLURM_ARRAY_TASK_ID $SLURM_ARRAY_TASK_ID

# #SBATCH --gres=gpu:1
# #SBATCH --mail-type=begin  
# #SBATCH --mail-type=end  
# #SBATCH --mail-user=holdenl@princeton.edu  

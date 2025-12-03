#!/bin/bash -l
#SBATCH --job-name=nbody-run
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --gpus=1
#SBATCH --output nbody-job_%j.out
#SBATCH --error  nbody-job_%j.err
#SBATCH --partition=gpu-v100

echo "Running on $(hostname)"
echo "CUDA visible devices: $CUDA_VISIBLE_DEVICES"
echo "Date: $(date)"

./nbody

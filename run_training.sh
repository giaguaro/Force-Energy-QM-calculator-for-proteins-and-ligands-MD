#!/bin/bash
#SBATCH --job-name=train
#SBATCH --mem=0

source ~/.bashrc
source activate nequip


export LD_LIBRARY_PATH=/home/${USER}/.conda/envs/nequip/lib/:$LD_LIBRARY_PATH

export OPENBLAS_NUM_THREADS=2

rm -r results && nequip-train ./spice_config.yaml

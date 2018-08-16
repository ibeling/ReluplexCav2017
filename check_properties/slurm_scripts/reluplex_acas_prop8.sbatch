#!/bin/sh
#SBATCH --job-name=property_8         # Job name
#SBATCH --cpus-per-task=2             # Run on a single CPU
#SBATCH --output=task_property8_%j.out   # Standard output and error log
#SBATCH --partition=nolimit
#SBATCH --time=12:00:00               # 12 hour timeout

pwd; hostname; date

cd /barrett/scratch/ibeling/ReluplexCav2017_guykatzz/check_properties

./property8/property8.elf ${SLURM_ARRAY_TASK_ID} | tee logs/dump_acas8_${SLURM_ARRAY_TASK_ID}.txt

date

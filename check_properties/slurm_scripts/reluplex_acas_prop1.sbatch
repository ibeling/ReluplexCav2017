#!/bin/sh
#SBATCH --job-name=property_1         # Job name
#SBATCH --cpus-per-task=1             # Run on a single CPU
#SBATCH --output=task_property1_%j.out   # Standard output and error log
#SBATCH --partition=limit
#SBATCH --time=12:00:00               # 12 hour timeout

pwd; hostname; date

cd /barrett/scratch/ibeling/ReluplexCav2017_guykatzz/check_properties

./property1/property1.elf ${SLURM_ARRAY_TASK_ID} | tee logs/dump_acas1_${SLURM_ARRAY_TASK_ID}.txt

date

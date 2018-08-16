#!/bin/bash

sbatch --array=0-44 reluplex_acas_prop1.sbatch
sbatch --array=10-44 reluplex_acas_prop2.sbatch
sbatch --array=0-5,9-44 reluplex_acas_prop3.sbatch
sbatch --array=0-5,9-44 reluplex_acas_prop4.sbatch
sbatch --array=0-3 reluplex_acas_prop5.sbatch
sbatch --array=1-4 reluplex_acas_prop6_lower.sbatch
sbatch --array=1-4 reluplex_acas_prop6_upper.sbatch
sbatch --array=3-4 reluplex_acas_prop7.sbatch
sbatch --array=2-4 reluplex_acas_prop8.sbatch
sbatch --array=0-2,4 reluplex_acas_prop9.sbatch
sbatch --array=0-3 reluplex_acas_prop10.sbatch

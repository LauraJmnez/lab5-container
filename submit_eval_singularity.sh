#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno30
#SBATCH -J lab5-Job
#SBATCH --cpus-per-task=2
#SBATCH --mail-type=NONE
#SBATCH --output=resultados_singularity.txt

module load singularity/3.8.0

echo "Programa k-mer13.py con singularity"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer13.py

echo "Programa k-mer14.py con singularity"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer14.py

echo "Programa k-mer13.cpp con singularity"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer13

echo "Programa k-mer14.cpp con singularity"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer14

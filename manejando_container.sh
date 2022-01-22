#!/bin/bash

module load singularity/3.8.0

echo
echo "Versión del sistema operativo de la imágen"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release
echo

echo "Contenido del directorio que estamos viendo"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls
echo

echo "Path del directorio que estamos viendo"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd
echo

echo "Versión de python que hay instalada"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif  python --version
echo

echo "Versión del compilador C++"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version
echo

echo "Programa k-mer13.cpp"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer13

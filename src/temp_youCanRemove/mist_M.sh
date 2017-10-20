#!/bin/sh
#PBS -l walltime=0:30:00
#PBS -N 2:rep1
#PBS -q gpu
#PBS -l nodes=1:ppn=1
#PBS -m ae
#PBS -M tuf36126@temple.edu
#PBS 

cd $PBS_O_WORKDIR;
mpirun -np 1 ./MIST_0.0.05 -r 1 -i alignments_MIST_rep1 -l 1000 -b 100000 -n 100 -u 0 > log_M; 

wait
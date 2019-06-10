#!/bin/bash
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=200
#SBATCH -t 00:01:00
#SBATCH -J "init"
#SBATCH -e run.e
#SBATCH -o run.o
## SBATCH --mail-type=END,FAIL # this line is commented
## SBATCH --mail-user=you@mit.edu  # this line is commented

sleep 30 # wait 30 seconds
md5sum pilm103/work/sample.fastq.gz

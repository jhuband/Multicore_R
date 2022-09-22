#!/bin/bash

#SBATCH -A rivanna-training     #the allocation to use
#SBATCH -p instructional        #the queue/partition to run on
#SBATCH -N 1			#total number of nodes for the job
#SBATCH -n 1			#how many copies of code to run 
#SBATCH -c 6			#how many cores to use
#SBATCH -t 00:10:00		#an overestimate for the run time

module purge
module load goolf/7.1.0_3.1.4 R/4.1.1	#load modules that my job needs

Rscript 03_doFuture.R


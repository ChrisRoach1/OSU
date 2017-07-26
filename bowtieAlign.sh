#this is the code that is used to align our reads to the newest 
#version of the Human genome, GRCh38. It utalizes bowtie to map the reads
#the genome reference needs to be downloaded in order to actually use it in
#the analysis.

echo "
#!/bin/bash
#PBS -k o
#PBS -l nodes=1:ppn=12,mem=48gb,walltime=10:00:00     #this line is liable to change, more resources could be needed
#PBS -N Bowtie                                        #name for job
#PBS -j oe

cd $PBS_0_WORKDIR
cd /home/roach89


./bowtie-0.12.7/bowtie -t -k 2 -v 2 GRCh38 SRAGATA2_trimmed.fq GATA2.sam



" | qsub

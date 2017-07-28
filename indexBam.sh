echo "
#!/bin/bash
#PBS -k o
#PBS -l nodes=2:ppn=12,mem=36gb,walltime=10:00:00
#PBS -N index-GATA2
#PBS -j oe
cd $PBS_0_WORKDIR
cd /home/roach89


#you must first sort the Bam file, would be best to get only unique reads from Bam file first though.
./samtools-1.3.1/samtools index GATA2_rerun.bam


" | qsub


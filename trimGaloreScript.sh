echo "
#!/bin/bash 
#PBS -k o 
#PBS -l nodes=2:ppn=6,mem=8gb,walltime=1:00:00  #may want to change the walltime for protection
#PBS -N JobName 
#PBS -j oe 

cd $PBS_0_WORKDIR
cd 


./TrimGalore-0.4.3/trim_galore -q 20 -length 12 -phred33 <inputFile>
#the length 12 specifys to throw out any reads that dip below 12bp long, this is helpful because with quality 
#trimming some reads may just be completely empty by the end of it.



" | qsub 

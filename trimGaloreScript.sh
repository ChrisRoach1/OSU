echo "
#!/bin/bash 
#PBS -k o 
#PBS -l nodes=2:ppn=6,mem=8gb,walltime=1:00:00
#PBS -N JobName 
#PBS -j oe 

cd $PBS_0_WORKDIR
cd 


./TrimGalore-0.4.3/trim_galore -q 20 -length 0 -phred33 <inputFile>
#its important to note that this could possibly lead to reads being completely empty that 
#could cause problems down the line for alignment, may need to trim again and cut out the 
#empty pairs
# example used to get rid of empty reads: ./TrimGalore-0.4.3/trim_galore -length 12 SRAGATA2_trimmed.fq 
#alternatively you can just change the original code and make (-length 0) into (-length 12), so there are less steps



" | qsub 

#Usage: macs14 <-t tfile> [-n name] [-g genomesize] [options]
#Example: macs14 -t ChIP.bam -c Control.bam -f BAM -g h -n test -w --call-subpeaks


echo "
#!/bin/bash
#PBS -k o
#PBS -l nodes=1:ppn=12,mem=48gb,walltime=10:00:00     #this line is liable to change, more resources could be needed
#PBS -N MACS                                          #name for job
#PBS -j oe
cd $PBS_0_WORKDIR
cd /home/roach89


macs14 -t <INPUT> -m 3,30 -g hs -p 1e-8 -f BED
#currently there is no control/input file to be used, but if there were it would go after the input file


" | qsub

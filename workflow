  If python 2.7 > is installed onto the computer being used, then things are much easier to do. Trim Galore is needed to trim off
adapters and low quality reads to improve the sequence. First cutadapt needs to be installed so trim galore can work, the website
linked will help explain all of the steps http://cutadapt.readthedocs.io/en/stable/installation.html . After that you can
follow the steps in the next site to get trim galore installed and running https://github.com/FelixKrueger/TrimGalore . When
running trim galore, the following inputs are what i used when trimming my reads: -length 0 -phredd33 -q 20 [input_file]
To explain the above, (-length 0) is saying not to cut out any reads that fall below a certain length(keep all reads). 
(-phredd33) is just specifying to use ASCII+33 quality scores. (-q 20) is specifying the quality score to trim off reads, the 
default is 20 but I wanted to specify just in case. Let it be known before doing anything I ran the reads through fastQC to 
check the overall quality of the reads, I think this is important to do, my reads were fairly good to begin with but fastQC
could benefit in using trim galore.
  After running trim galore a log file will be created giving details about the trimming, I put all of them into their own excel
sheet and then picked out the most important parts and put those all in a excel sheet together. 

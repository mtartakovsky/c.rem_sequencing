#!/bin/bash

module load fastqc/v0.11.2
mkdir fastqc_raw

cd /scratch/lfs/mtartakovsky/C.remanei/fastq_files

for i in *gz; do
	gunzip $i > $(i/.gz)
	fastqc -o fastqc_raw2 -i -f fastq i
done 
	

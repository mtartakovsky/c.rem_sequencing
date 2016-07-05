#!/bin/bash

#SBATCH --mail-user=maria.tartakovsky@gmail.com
## System will email you at the [b]eginning, [e]nd, and [a]bort of a job
#SBATCH --mail-type=ALL
## How many nodes, processors per node (ppn), and memory per processor (pmem) to request
#SBATCH --nodes=1
## How long you think your job will ex. run 24hrs
#SBATCH --time=24:00:00



module load samtools

cd /ufrc/baer/mtartakovsky/C.remanei/fastq_files

for i in *.sam; do
	describer=$(echo ${i} | sed 's/.sam//')
        samtools view -bS $i  > ${describer}.bam

	rm $i
done
~   
~                                 

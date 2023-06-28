# Useful_Genomics_Scripts
Repository of utility scripts that I use frequently while working with genomic data

removeshortcontigs.py: removing contigs under 200 nucleotides for NCBI submission, written in python using biopython

chromosome_new_name_move.sh: rename contigs.fasta from output of SPAdes to include isolate name from a list in a text file and move to a new folder

quast.sh: running quast through a list of assemblies from a text file

NG_rename_copy_1.sh: rename fastq files from sequencing folder and all into new folder for assembly

extractgenesfromgenbackProtein.py: extract the DNA sequence of a gene annotated by prokka from a genBank file and translate into a protein sequence
extractgenesfromgenbackDNA.py: extract the DNA sequence of a gene annotated by prokka from a genBank file

#!/bin/bash

cat NG_WGS_1.txt |while read line; do

echo $line

mv "Sask_2018-2022_WGS_1/Bundled Collection/"$line"/forward/Bundled_Collection/"*.fastq.fastqsanger "Sask_2018-2022_WGS_1/Bundled Collection/"$line"/forward/Bundled_Collection/NG-"$line"_F.fastq" 
cp "Sask_2018-2022_WGS_1/Bundled Collection/"$line"/forward/Bundled_Collection/NG-"$line"_F.fastq" NG_fastq/

mv "Sask_2018-2022_WGS_1/Bundled Collection/"$line"/reverse/Bundled_Collection/"*.fastq.fastqsanger "Sask_2018-2022_WGS_1/Bundled Collection/"$line"/reverse/Bundled_Collection/NG-"$line"_R.fastq"
cp "Sask_2018-2022_WGS_1/Bundled Collection/"$line"/reverse/Bundled_Collection/NG-"$line"_R.fastq" NG_fastq/

done  
 


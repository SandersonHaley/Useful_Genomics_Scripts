#!/bin/bash

cat scaffolds.txt |while read line; do

quast.py "$line" -o "$line"_quast_results

done

#!/bin/bash
for i in ls ../Data/*.fasta
do
grep ">" $i
done

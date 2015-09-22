#!/bin/sh
#$ -N txt_scratch
#$ -S /bin/sh
#$ -cwd
#$ -j y
echo Running on: `hostname`.
echo "Text files that are larger than 100mb and haven't been touched in 30 days"
echo "---"
#$ -l h_rt=120:0:0
#$ -l h_vmem=4G
find /scratch/ -mtime +30 -size +100M -exec grep -Iq . '{}' \; -exec du -h '{}' \; > $HOME/txt_scratch.log
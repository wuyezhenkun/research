#!/bin/bash
#SBATCH -N 1
#SBATCH -p PM --mem=512GB
#SBATCH --ntasks-per-node 28
#SBATCH -t 72:00:00
# echo commands to stdout 
set –x

cd /pylon5/cc5fpcp/weiliang/BMBL/research/m_clust2/

python3 get_matrix.py 
Rscript use_Mclust.R 

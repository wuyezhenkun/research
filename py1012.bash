#!/bin/bash
#SBATCH -N 1
#SBATCH -p PM --mem=512GB
#SBATCH --ntasks-per-node 28
#SBATCH -t 72:00:00
# echo commands to stdout 
set –x

cd /pylon5/cc5fpcp/weiliang/BMBL/research/get_m_clust/mclust100/data_12

python3 Agglomerative_cluster.py GSE20326 35
python3 Agglomerative_cluster.py GSE101612 25
python3 Agglomerative_cluster.py GSE102760 13
python3 Agglomerative_cluster.py GSE96888 29
python3 Agglomerative_cluster.py GSE79705 60

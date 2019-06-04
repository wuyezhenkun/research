library(mclust)

filename <- commandArgs(trailingOnly = TRUE)

data = read.table(filename,header = T)

data1 = data[,2:16]

m_clust <- Mclust(as.matrix(data1),G=1:100)

print(m_clust$G)

save.image(file = paste( filename,'.RData'))

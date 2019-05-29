library(mclust)

filename <- commandArgs(trailingOnly = TRUE)

data = read.table(filename,header = T)

data1 = data[,2:16]

m_clust <- Mclust(as.matrix(data1),G=1:50)

print(m_clust$G)

save.image(file = 'result.RData')

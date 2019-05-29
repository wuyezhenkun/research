library(mclust)

filename <- readline()

data = read.table(filename,header = T)

data1 = data[,2:16]

m_clust <- Mclust(as.matrix(data1))

print(m_clust$G)

save.image(file = 'result.RData')
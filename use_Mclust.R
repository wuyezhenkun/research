library(mclust)

input <- commandArgs(trailingOnly = TRUE)

filename = paste(input[1],'_series_matrix.txt',sep = "")

data = read.table(filename,header = T)

data1 = data[,-1]

m_clust <- Mclust(as.matrix(data1),G=1:number)

print(m_clust$G)

save.image(file = paste(filename,'.RData',sep = ""))


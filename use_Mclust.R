library(mclust)

input <- commandArgs(trailingOnly = TRUE)

filename = input[2]

number = as.numeric(input[1])

data = read.table(filename,header = T)

data1 = data[,-1]

m_clust <- Mclust(as.matrix(data1),G=1:)

print(m_clust$G)

save.image(file = paste( filename,'.RData'))


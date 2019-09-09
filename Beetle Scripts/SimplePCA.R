library(pcaMethods)
Species <- prep(PCA_Species, scale="none",center=TRUE, na.rm= FALSE)
resPCA <- pca(PCA_Species, scale="uv", method="svd", center=TRUE, nPcs=5)
slplot(resPCA,pcs=c(1:2),scoresLoadings = c(TRUE,TRUE))
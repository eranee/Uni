library(vegan)
library(betapart)
ColeopDist <- read.csv("C:/Users/eranee/Desktop/Beetles/PCA_Species.csv", row.names=1, sep=";")


ColeopDist <- ColeopDist[1:nrow(ColeopDIst)]
ColeopDist <- ColeopDist[1:12,] 
ColeopDist <- ColeopDist[-9,]
#ColeopDist<- ColeopDist[,as.logical(colSums(ColeopDist != 0)) ]
betapart <-beta.multi(ColeopDist, index.family="sorensen")
Betapart <-beta.multi(ColeopDist, index.family="sorensen")
dismat <- vegdist(ColeopDist, method="jaccard", binary="true")
dismat1 <- as.matrix(dismat)
betapart1 <- as.matrix(betapart)

colnames(dismat1) <- rownames(ColeopDist)
rownames(dismat1) <- rownames(ColeopDist)
#round(dismat1,2)
round(betapart1,2)
clus1 <- hclust(dismat, method = "average")

par(mar=c(3,4,1,5));plot(clus1, labels =rownames(ColeopDist), cex = 0.75,main = "Sørensen", sub = "")


dispart <- beta.pair(ColeopDist)
###simpsons similarity (pure turnover)
b.sim <- round(as.matrix(dispart$beta.sim),3)
dimnames(b.sim) <- list(ColeopDist[,1],ColeopDist[,1])
clusim <- hclust(dispart$beta.sim, method = "average")
par(mar=c(3,4,1,5));plot(clusim, labels =rownames(ColeopDist), cex = 0.75,main = "turnover", sub = "")

#beta nestedness
b.nes <- round(as.matrix(dispart$beta.sne),3)
dimnames(b.nes) <- list(rownames(ColeopDist),rownames(ColeopDist))
clusnes <- hclust(dispart$beta.sne, method = "average")
par(mar=c(3,4,1,5));plot(clusnes, labels =rownames(ColeopDist), cex = 0.75, sub = "",main = "nestedness")

#library(lattice)
#require(lattice)

#matles <- ColeopDist[, colnames(ColeopDist)%in% spl??s]
#md1 <- vegdist(matles)
#mmd1 <- as.matrix(md1)
#dimnames(mmd1) <- list(ColeopDist[,1], ColeopDist[,1])
#clum1 <- hclust(md1, method = "average")
#par(mar=c(3,4,1,5));plot(clum1, labels =ColeopDist[,1], cex = 0.75, sub = "",main = "nestedness")


library("pcaMethods")
library("scatterplot3d")
#Do PCA analysis
PCA_Species <- read.csv("C:/Users/eranee/Desktop/Beetles/PCA_Species.csv", row.names=1, sep=";")
PCA_Species <- PCA_Species[1:11,]
pca <- pca(PCA_Species[-9,], method="ppca", scale="none",nPcs = 5)
summary <- summary(pca)
explanation <- paste(as.character(round(summary[2,3]*100,digits=2)), "% of the variance explained", sep="")
plot(pca)
#Set up shapes and colors
colors <- c("#551a8b", "#ff0000", "#56B4E9","#00FF00")
colors <- colors[PCA_Species$Location[-9]]
shapes <- c(16,17,18,19)
shapes <- shapes[PCA_Species$Location[-9]]
#Make the base plot
slplot(pca, scoresLoadings = c(T, T))
scatterplot3d(pca@scores[,1],pca@scores[,2],pca@scores[,3],xlab="PC1",ylab="PC2",zlab="PC3", pch = 16, color = colors,grid=T,box=F)
source('http://www.sthda.com/sthda/RDoc/functions/addgrids3d.r')
s3d <- scatterplot3d(pca@scores[,1:3], pch = "", type="h", grid=FALSE, box=FALSE, color=colors, main="Principal component analysis of the Staphylinidae of the Aegean",scale.y=0.75,sub = explanation)
addgrids3d(pca@scores[,1:3], grid = c("xy", "xz", "yz"))
#Add points, text and legends
s3d.coords <- s3d$xyz.convert(pca@scores[,1:3])
s3d$points3d(pca@scores[,1:3], pch = shapes, col=colors)
text(s3d.coords$x,s3d.coords$y,label = PCA_Species$X[-9],cex=.5,pos=3)
legend("topleft",legend = c("East Aegean", "Mainland", "South Aegean", "West Aegean"), pch=c(16,17,18,19),col=c("#551a8b", "#ff0000", "#56B4E9","#00FF00"))

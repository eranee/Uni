library(tidyverse)
library(stringr)

### Preparing R for the script, importing data ###
oldw <- getOption("warn")
options(warn = -1)
rm(temp,RLine, ELine,STDLine,x,y,Location,n2,z,a, i, MaxPoints)
temp = as.character(objects(pattern="_curve"))
RLine <- data.frame()
MaxPoints <- data.frame()
ELine <- data.frame()
STDLine <- data.frame()
### Preparing data for plotting ###
for (i in seq_along(temp)){
  ### Defining data ###
  x <- get(temp[i])
  y <- deparse(temp[i])
  Location <- str_remove(y,"_curve")
  Location <- str_remove_all(Location,"\"")
  zr <- as.data.frame(x[["rarefact.line"]])
  ze <- as.data.frame(x[["extrap.line"]])
  zstd <- as.data.frame(x[["ci.poly"]])
  names(zr) <- c("Samples", "Species")
  names(ze) <- c("Samples", "Species")
  names(zstd) <- c("Samples", "Species")
  m1 <- data.frame(as.numeric(as.character(max(zr$Samples))),as.numeric(as.character(max(zr$Species))), Location)
  names(m1) <- c("Samples", "Species", "Location")
  ### Shaping the data ###
  ar <- cbind(zr, Location)
  ae <- cbind(ze, Location)
  astd <- cbind(zstd, Location)
  RLine <- bind_rows(RLine,ar)
  ELine <- bind_rows(ELine,ae)
  STDLine <- bind_rows(STDLine, astd)
  MaxPoints <- bind_rows(m1,MaxPoints)
}
options(warn = oldw)
### Comparative ###
comp <- ggplot(data=RLine, aes(x=Samples, y=Species, colour=Location,alpha=0.6)) +
  geom_line(size=1.2)+ 
  geom_line(data=ELine, aes(x=Samples, y=Species, colour=Location), linetype="twodash",size=1.2) +
  geom_point(data=MaxPoints, aes(x=Samples, y=Species, colour = Location), alpha =1, size=2) +
  geom_segment(data=MaxPoints, aes(x=Samples, y=Species, xend=Samples, yend=0), size=1.05) + 
  geom_segment(data=MaxPoints, aes(x=Samples, y=Species, xend=0, yend=Species), size=1.05) + 
  scale_x_continuous(expand = c(0, 0),breaks=seq(0,7000,500)) + 
  scale_y_continuous(expand = c(0, 0),breaks=seq(0,275,25)) +
  coord_cartesian(xlim =c(0, 7000), ylim = c(0, 275)) +
  #scale_alpha(show.legend=FALSE)+
  guides(alpha = FALSE) +
  scale_color_discrete(name="", guide = guide_legend(override.aes=list(shape=15,size=7))) +
  ggtitle("Comparative Species Richness Estimates") +
  theme(legend.margin = margin(-0.95,0,0,0, unit="cm"),plot.title=element_text(hjust=0.5,face="bold"))
comp
ggsave("comp_500dpi.png", comp, height = 10, width = 15, dpi = 500)
### Individual Plot ###
ind <- ggplot(data=RLine, aes(x=Samples,y=Species,colour=Location)) +
  geom_polygon(data=STDLine, aes(x=Samples, y=Species, colour=Location),alpha=0.1) +
  geom_line(size=1.1)+
  geom_line(data=ELine, aes(x=Samples, y=Species, colour=Location), linetype="dotdash",size=1.1) +
  geom_point(data=MaxPoints, aes(x=Samples, y=Species),colour="black", size=1.5) +
  geom_segment(data=MaxPoints, aes(x=Samples, y=Species, xend=Samples, yend=0), color="black", size=1.05) + 
  geom_segment(data=MaxPoints, aes(x=Samples, y=Species, xend=0, yend=Species), color="black", size=1.05) + 
  scale_x_continuous(expand = c(0, 0),breaks=seq(0,7000,1000)) + 
  scale_y_continuous(expand = c(0, 0),breaks=seq(0,275,25)) +
  coord_cartesian(xlim =c(0, 7000), ylim = c(0, 275)) +
  facet_wrap(Location ~ ., ncol=2)+ 
  ggtitle("Species Richness Estimates") + 
  theme(legend.position = "none", plot.title =element_text(hjust=0.5,face="bold"),panel.spacing.x=unit(6,"mm"))
ind
ggsave("ind_1000dpi.png", ind, height = 15, width = 10, dpi = 1000)

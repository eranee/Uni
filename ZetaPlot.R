library(zetadiv)
library(ggplot2)
library('Cairo')
SPZeta <- read.csv("C:/Users/eranee/Desktop/Beetles/SPZeta.csv", row.names=1, sep=";")
Zdm <- Zeta.decline.mc(SPZeta[-9,1:959],orders=1:10,sam=1000)
Zom <- Zeta.order.mc(SPZeta[-9,1:959],order=2,sam=1000)
par(mfrow=c(1,1))
Sdp <- data.frame(Zdm$zeta.val+Zdm$zeta.val.sd) 
Sdm <- data.frame(Zdm$zeta.val-Zdm$zeta.val.sd)
Dat <- data.frame(Zdm$zeta.order,Zdm$zeta.val,Sdp,Sdm)
names(Dat)[1] <- "Zeta_order"
names(Dat)[2] <- "Zeta_value"
CairoWin()
ggplot(data=Dat, aes(x = Zeta_order, y = Zeta_value, ymin=Zeta_value-Zdm$zeta.val.sd,ymax=Zeta_value+Zdm$zeta.val.sd)) + 
  geom_ribbon(fill = "steelblue",alpha=0.75) +
  geom_line(color='black',size=0.6) +
  geom_point(aes(x = Zeta_order, y = Zeta_value), colour='black', size=1.5, shape = 19) +
  labs(title = "Zeta decline for the Aegean Islands", x="  Zeta-order",y="  Zeta-value") +
  theme(plot.title = element_text(hjust=0.5,size=12),
  axis.title = element_text(size=10),
  axis.text = element_text(size=8))
ggsave(file="ZetaDecline.png")

  #geom_errorbar(width = 0.2,color='purple')
  #geom_point(aes(x = Zeta_order, Dat[[3]]), colour='purple', size=2, shape = 21) +
  #geom_line(mapping = aes(x = Zeta_order, Dat[[3]]),linetype=2)+
  #geom_point(aes(x = Zeta_order, Dat[[4]]), colour='purple', size=2, shape = 21) +
  #geom_line(mapping = aes(x = Zeta_order, Dat[[4]]),linetype=2)

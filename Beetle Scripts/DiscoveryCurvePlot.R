par(mfrow=c(3,3),mar=c(2,2,2,2))

Chios_f <- Chios_curve[["f.stats"]]
plot(Chios_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="#B66F34",xlab="",ylab="", main="Chios")
#points(Chios_curve[["rarefact.line"]],type="l",lwd=2,col="#B66F34")
points(Chios_curve[["extrap.line"]],type="l",lty=2,lwd=2,col="#B66F34")
points(Chios_f[[4]],Chios_f[[3]],type="p",pch=23, bg="#B66F34", col="#B66F34")
points(Chios_curve[["ci.poly"]],type="l",lty=6,lwd=2, col="#B66F34")

Crete_f <- Crete_curve[["f.stats"]]
plot(Crete_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="#afeeee",xlab="",ylab="",main="Crete")
#points(Crete_curve[["rarefact.line"]],type="l",lwd=2,col="#afeeee")
points(Crete_curve[["extrap.line"]],type="l",lty=2,lwd=2,col="#afeeee")
points(Crete_f[[4]],Crete_f[[3]],type="p",pch=23, bg="#afeeee", col="#afeeee")
points(Crete_curve[["ci.poly"]],type="l",lty=6,lwd=2, col="#afeeee")

#points(Corfu_curve[["rarefact.line"]],type="l",lwd=2,col="#C9F52A")
#points(Corfu_curve[["extrap.line"]],type="l",lty=2,lwd=2,col="#C9F52A")

Ikaria_f <- Ikaria_curve[["f.stats"]]
plot(Ikaria_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="#ffd1dc",xlab="",ylab="",main="Ikaria")
#points(Ikaria_curve[["rarefact.line"]],type="l",lwd=2,col="#ffd1dc")
points(Ikaria_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#ffd1dc")
points(Ikaria_f[[4]],Ikaria_f[[3]],type="p",pch=23, bg="#ffd1dc", col="#ffd1dc")
points(Ikaria_curve[["ci.poly"]],type="l",lty=6,lwd=2, col="#ffd1dc")

Karpathos_f <- Karpathos_curve[["f.stats"]]
plot(Karpathos_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="#ffa500",xlab="",ylab="",main="Karpathos")
#points(Karpathos_curve[["rarefact.line"]],type="l",lwd=2,col="#ffa500")
points(Karpathos_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#ffa500")
points(Karpathos_f[[4]],Karpathos_f[[3]],type="p",pch=23, bg="#ffa500", col="#ffa500")
points(Karpathos_curve[["ci.poly"]],type="l",lty=6,lwd=2, col="#ffa500")

Kos_f <- Kos_curve[["f.stats"]]
plot(Kos_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="#A61C86",xlab="",ylab="",main="Kos")
#points(Kos_curve[["rarefact.line"]],type="l",lwd=2,col="#A61C86")
points(Kos_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#A61C86")
points(Kos_f[[4]],Kos_f[[3]],type="p",pch=23, bg="#A61C86", col="#A61C86")
points(Kos_curve[["ci.poly"]],type="l",lty=6,lwd=2, col="#A61C86")

Lesbos_f <- Lesbos_curve[["f.stats"]]
plot(Lesbos_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="#591AF3",xlab="",ylab="",main="Lesbos")
#points(Lesbos_curve[["rarefact.line"]],type="l",lwd=2,col="#591AF3")
points(Lesbos_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#591AF3")
points(Lesbos_f[[4]],Lesbos_f[[3]],type="p",pch=23, bg="#591AF3", col="#591AF3")
points(Lesbos_curve[["ci.poly"]],type="l",lty=6,lwd=2, col="#591AF3")

Rhodes_f <- Rhodes_curve[["f.stats"]]
plot(Rhodes_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="black",xlab="",ylab="",main="Rhodes")
#points(Rhodes_curve[["rarefact.line"]],type="l",lwd=2,col="black")
points(Rhodes_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="black")
points(Rhodes_f[[4]],Rhodes_f[[3]],type="p",pch=23, bg="black", col="black")
points(Rhodes_curve[["ci.poly"]],type="l",lty=6,lwd=2, col="black")

Samos_f <- Samos_curve[["f.stats"]]
plot(Samos_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="#d3d3d3",xlab="",ylab="",main="Samos")
#points(Samos_curve[["rarefact.line"]],type="l",lwd=2,col="#d3d3d3")
points(Samos_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#d3d3d3")
points(Samos_f[[4]],Samos_f[[3]],type="p",pch=23, bg="#d3d3d3", col="#d3d3d3")
points(Samos_curve[["ci.poly"]],type="l",lty=6,lwd=2, col="#d3d3d3")

Skyros_f <- Skyros_curve[["f.stats"]]
plot(Skyros_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="#00ff00",xlab="",ylab="",main="Skyros")
#points(Skyros_curve[["rarefact.line"]],type="l",lwd=2,col="#00ff00")
points(Skyros_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#00ff00")
points(Skyros_f[[4]],Skyros_f[[3]],type="p",pch=23, bg="#00ff00", col="#00ff00")
points(Skyros_curve[["ci.poly"]],type="l",lty=6,lwd=2, col="#00ff00")

##COMPARATIVE PLOT##
par(mfrow=c(1,1))
plot(Chios_curve[["rarefact.line"]],xlim=c(50,5000),ylim=c(1,250),
     type="l",lwd=2,col="#B66F34",xlab="Samples",ylab="Species")
points(Chios_curve[["extrap.line"]],type="l",lty=2,lwd=2,col="#B66F34")
points(Chios_f[[4]],Chios_f[[3]],type="p",pch=23, bg="#B66F34", col="#B66F34")

points(Crete_curve[["rarefact.line"]],type="l",lwd=2,col="#afeeee")
points(Crete_curve[["extrap.line"]],type="l",lty=2,lwd=2,col="#afeeee")
points(Crete_f[[4]],Crete_f[[3]],type="p",pch=23, bg="#afeeee", col="#afeeee")

points(Ikaria_curve[["rarefact.line"]],type="l",lwd=2,col="#ffd1dc")
points(Ikaria_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#ffd1dc")
points(Ikaria_f[[4]],Ikaria_f[[3]],type="p",pch=23, bg="#ffd1dc", col="#ffd1dc")

points(Karpathos_curve[["rarefact.line"]],type="l",lwd=2,col="#ffa500")
points(Karpathos_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#ffa500")
points(Karpathos_f[[4]],Karpathos_f[[3]],type="p",pch=23, bg="#ffa500", col="#ffa500")

points(Kos_curve[["rarefact.line"]],type="l",lwd=2,col="#A61C86")
points(Kos_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#A61C86")
points(Kos_f[[4]],Kos_f[[3]],type="p",pch=23, bg="#A61C86", col="#A61C86")

points(Lesbos_curve[["rarefact.line"]],type="l",lwd=2,col="#591AF3")
points(Lesbos_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#591AF3")
points(Lesbos_f[[4]],Lesbos_f[[3]],type="p",pch=23, bg="#591AF3", col="#591AF3")

points(Rhodes_curve[["rarefact.line"]],type="l",lwd=2,col="black")
points(Rhodes_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="black")
points(Rhodes_f[[4]],Rhodes_f[[3]],type="p",pch=23, bg="black", col="black")

points(Samos_curve[["rarefact.line"]],type="l",lwd=2,col="#d3d3d3")
points(Samos_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#d3d3d3")
points(Samos_f[[4]],Samos_f[[3]],type="p",pch=23, bg="#d3d3d3", col="#d3d3d3")

points(Skyros_curve[["rarefact.line"]],type="l",lwd=2,col="#00ff00")
points(Skyros_curve[["extrap.line"]],type="l",lwd=2,lty=2,col="#00ff00")
points(Skyros_f[[4]],Skyros_f[[3]],type="p",pch=23, bg="#00ff00", col="#00ff00")

legend(50, 265, c("Crete","Chios","Ikaria","Kos","Lesbos","Rhodes","Samos","Skyros","Karpathos"),
       cex=0.7, col=c("#afeeee","#B66F34","#ffd1dc","#A61C86","#591AF3","black","#d3d3d3","#00ff00","#ffa500"),pch=23,lty=1)
title(main="Species Discovery curves for various Aegean islands",xlab="Samples",ylab="Species")


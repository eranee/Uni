library(MuMIn)
library(hier.part)
library(xlsx)
library(BiodiversityR)
library(modEvA)
GLM <- read.csv2("C:/Users/eranee/Desktop/Beetles/GLM.csv", row.names=1)
GLM <- GLM[,-9]
#GLM <- data.frame(scale(GLM))

options(na.action="na.fail")
fml <- glm(Species ~ .,family = poisson(link="log"), data=GLM,x=TRUE)
msl <- dredge(fml,rank = "AICc")

#Visualize
par(mar=c(3,5,6,4),mfrow=c(1,1))
plot(msl, labAsExpr = T)

model.avg(msl,subset = delta < 4)
MS <- model.sel(msl)
#Show "best" model
anova(fml,test="Cp")
#anova(msl)
sMS <- summary(get.models(msl, 1)[[1]])
sMS
MS
glm1 <- glm(Species ~ Ann..Precip. + Area + Dist..Clos..Main. + Others.Forest + 1,family = poisson(link="log"), data=GLM,x=TRUE)
glm2 <- glm(Species ~ Ann..Precip. + Area + Dist..Clos..Main. + OFxP + 1,family = poisson(link="log"), data=GLM,x=TRUE)
deviancepercentage(glm1,GLM,test="Chisq", digits=5)
deviancepercentage(glm2,GLM,test="Chisq", digits=5)
write.xlsx(MS, "models.xlsx",sheetName="Models")

confset.95p <- get.models(msl, cumsum(weight) <= .95)
avgmod.95p <- model.avg(confset.95p)
summary(avgmod.95p)
summary(get.models(avgmod.95p,1)[[1]])
confint(avgmod.95p)
summary(get.models(msl, 1)[[1]])

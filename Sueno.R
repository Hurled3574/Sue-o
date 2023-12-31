rm(list = ls())
library(wooldridge)
library(FactoMineR)
library(dplyr, pos = "package:base")
sueno <- sleep75
glimpse(sueno)

class(sueno)

typeof(sueno)

anyNA(sueno) #Hay NAs. hay que ver dónde
View(sueno)

anyDuplicated(sueno) #No hay datos duplicados

cor(sueno) #Quizás los NA estén en las variables lhrwage y hrwage, porque no se pueden computar sus coeficientes de correlación

table(sueno$lhrwage, useNA = "ifany") #Table DEMASIADO GRANDE y R no la computa
anyNA(sueno$lhrwage) #Eliminamos lhrwage porque hay NAs, es decir, datos faltantes
anyNA(sueno$hrwage) #Eliminamos hrwage porque tambien presenta datos faltantes

colnames(sueno)
sueno2 <- sueno[,-c(14,33)]
colnames(sueno2)

mvarcov <- var(sueno2)
mcor <- cor(sueno2)

diag(mvarcov)

eigen(mvarcov)$values
eigen(mvarcov)$vectors

# eigen(mcor)

corrplot(cor(sueno2))

PCA(sueno2)

var(sueno2)

eigen()

screeplot()
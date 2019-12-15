cat("\014")    # to clear console to CTRL+L
rm(list=ls())  
setwd("C:/Users/Anmole/Documents/GitHub/Project1/IMI/DPA")

data <- read.csv("winequality-red.csv", sep=";")
col1=sample(1992:2019,size=1599,replace=T)
data2=data.frame(data,col1)
col2=as.factor(sample(0:2,size=1599,replace=T))
data3=data.frame(data2,col2)

data_setseq1= data3[c(1:(0.2*nrow(data3))),]
data_setseq2= data3[c((0.2*nrow(data3)):(0.5*nrow(data3))),]
data_setseq3= data3[c((0.5*nrow(data3)):nrow(data3)),]

index = sample(3,nrow(data3),replace=TRUE, prob=c(0.2,0.3,0.5))
data_set1=data3[index==1,]
data_set2=data3[index==2,]
data_set3=data3[index==3,]

summary(data3)


#install.packages("missForest")
library(missForest)

set.seed(123)
data.mis = prodNA(data3,noNA=0.1) #Generate 10% missing values at random

summary(data.mis)
names(data3)

library(ggplot2)
ggplot(data = data3, mapping = aes(x = pH, y = volatile.acidity)) +
  geom_point(size=3, shape=20)+ggtitle("PH vs volatile acidity") 

ggplot(data = data3, mapping = aes(x = pH, y = fixed.acidity)) +
  geom_point(size=3, shape=20)+ggtitle("PH vs fixed acidity")

ggplot(data = data3, mapping = aes(x = pH, y = fixed.acidity)) +
  geom_point(size=3, shape=20)+ggtitle("PH vs fixed acidity")

ggplot(data = data3, mapping = aes(x = residual.sugar, y = alcohol)) +
  geom_point(size=3, shape=20)+ggtitle("residual.sugar vs alcohol")

ggplot(data = data3, mapping = aes(x = total.sulfur.dioxide, y = fixed.acidity)) +
  geom_point(size=3, shape=20)+ggtitle("total.sulfur.dioxide vs fixed acidity")

ggplot(data = data3, mapping = aes(x = sulphates, y = alcohol)) +
  geom_point(size=3, shape=20)+ggtitle("sulphates vs fixed alcohol")

qqnorm(data3$alcohol)
qqnorm(data3$citric.acid)
qqnorm(data3$fixed.acidity)
qqnorm(data3$free.sulfur.dioxide)
qqnorm(data3$volatile.acidity)
qqnorm(data3$chlorides)
qqnorm(data3$density)
qqnorm(data3$pH)

###Dataset 2----------------
cat("\014")    # to clear console to CTRL+L
rm(list=ls())  
setwd("C:/Users/Anmole/Documents/GitHub/Project1/IMI/DPA")

data <- read.csv("bank-full.csv", sep=";")
col1=sample(1992:2019,size=nrow(data),replace=T)
data2=data.frame(data,col1)
col2=as.factor(sample(0:2,size=nrow(data),replace=T))
data3=data.frame(data2,col2)


data_setseq1= data3[c(1:(0.2*nrow(data3))),]
data_setseq2= data3[c((0.2*nrow(data3)):(0.5*nrow(data3))),]
data_setseq3= data3[c((0.5*nrow(data3)):nrow(data3)),]

index = sample(3,nrow(data3),replace=TRUE, prob=c(0.2,0.3,0.5))
data_set1=data3[index==1,]
data_set2=data3[index==2,]
data_set3=data3[index==3,]

summary(data3)

#install.packages("missForest")
library(missForest)

set.seed(123)
data.mis = prodNA(data3,noNA=0.1) #Generate 10% missing values at random

summary(data.mis)
names(data3)

library(ggplot2)
ggplot(data = data3, mapping = aes(x = age, y = default)) +
  geom_point(size=3, shape=20)+geom_jitter()+ggtitle("age vs default") 

ggplot(data = data3, mapping = aes(x = job, y = default)) +
  geom_point(size=3, shape=20)+geom_jitter()+ggtitle("job vs default")

ggplot(data = data3, mapping = aes(x = education, y = default)) +
  geom_point(size=3, shape=20)+geom_jitter()+ggtitle("education vs default")

ggplot(data = data3, mapping = aes(x = balance, y = default)) +
  geom_point(size=3, shape=20)+geom_jitter()+ggtitle("balance vs default")

ggplot(data = data3, mapping = aes(x = pdays, y = default)) +
  geom_point(size=3, shape=20)+geom_jitter()+ggtitle("pdays vs default")

ggplot(data = data3, mapping = aes(x = campaign, y = default)) +
  geom_point(size=3, shape=20)+geom_jitter()+ggtitle("campaign vs default")

ggplot(data = data3, mapping = aes(x = previous, y = default)) +
  geom_point(size=3, shape=20)+geom_jitter()+ggtitle("previous vs default")

qqnorm(data3$age)

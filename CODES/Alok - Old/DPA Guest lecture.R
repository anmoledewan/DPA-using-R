########Day 4 - Guest Lecture -----------------
getwd()  # to get the adress of current directory  "C:/Users/Anmole/Documents/GitHub/Project1"
cat("\014")    # to clear console to CTRL+L
rm(list=ls())  # to clear global environment
setwd("C:/Users/Anmole/Documents/GitHub/Project1/IMI/DPA")
t1=Sys.time()
t2=Sys.time()
t2-t1

date()
#Vector -------------------
vector = c("ÏMI",1,"ÏSB","MDI")
vector

(a= c(1,2,3,4))
c=c(TRUE,FALSE)
c

#List------------
alist=list(1,2,3);alist

#Matrix-------------
matrixHelp=?matrix
matrixHelp

#Row wise
matrixval=matrix(c(1,2,4,5,6,7,8,9),nrow=2,ncol=4,byrow = TRUE)
matrixval

#col Wise
matrixval=matrix(c(1,2,4,5,6,7,8,9),nrow=2,ncol=4)
matrixval

#Arrays -----------------

#DataFrames--------

#Descriptive Statistics----------
mean(a)

#Class Practice------------
#Question 1 ----------------------
x <- c(1, 0.5, 4)
mean(x)
max(x)
quantile(x)


#Question 2 ----------------------
rep(4,9)

rep(1:7,10)

rep(1:7,each=3)

#Question 3 ----------------------
a <- c(1,3,2,4,5,2,4,2,6,4,5,3)
a[1]
b <- a[c(1,4)]
d <- a[1:4]
d[-1]

seq(4)
#Question 4 ----------------------
mean(iris$Sepal.Length)
str(iris)
iris
max(iris$Sepal.Length)
var(iris$Sepal.Length)
mean(iris)
summary(iris)
str(iris)

is.numeric(a)
is.factor(a)

as.factor(a)

is.numeric(a)
is.factor(a)


#Question 5 ----------------------
tapply(iris$Sepal.Length,iris$Species,mean)
?tapply
#Question 6 ----------------------
View(mtcars)
head(mtcars)
tail(mtcars)
str(mtcars)
dim(mtcars)

tapply(mtcars$mpg, list(mtcars$cyl,mtcars$am),mean)

#Question 7 ----------------------
setA <- c("a", "b", "c", "d", "e"); 
setB <- c("d", "e", "f", "g") 
union(setA, setB)
intersect(setA, setB)
setdiff(setA,setB)
#Question 8 ----------------------
x<- 1:6
y <- 12:17
cbind(x,y)
rbind(x,y)

#Question 9 ----------------------
x<- 1:5; y <- 12:17;
#Data is assymetrical, therefore it throws a warning but repeats the 1st number of smaller vector
cbind(x,y) 
rbind(x,y)

#Question 10 ----------------------
sequence=seq(1, 10, 2)
#class(sequence)
vector1=rep(sequence,5,each=4);
vector1
#Question 11 ----------------------

df=as.data.frame(matrix(sample(1:5,600,replace=T),nrow=200,ncol=3))
df


col1=sample(1:5,size=200,replace=T)
col2=sample(1:5,size=200,replace=T)
col3=sample(1:5,size=200,replace=T)
df1=data.frame(col1,col2,col3)
df1
#Question 12 ----------------------
dim(df)
nrow(df)
ncol(df)
df$V2
df[2]
str(df)
head(df)


ls()

yellow_tripdata_2018_01 <- read_csv("C:/Users/Anmole/Downloads/yellow_tripdata_2018-01.csv")
View(yellow_tripdata_2018_01)
# Lecture 2----------------
#Missing Data------------
y=c(1,2,3,NA)
is.na(y)
mean(y)

#mean by ignoring missing values
mean(y,na.rm=T)

install.packages("missForest")
library(missForest)

help(prodNA)
?mean
??mean
set.seed(123)
iris.mis = prodNA(iris,noNA=0.1) #Generate 10% missing values at random

str(iris.mis)
summary(iris.mis)

which(is.na(iris))
sum(is.na(iris))


which(is.na(iris.mis))
sum(is.na(iris.mis))

colSums(is.na(iris.mis))
complete.cases(iris.mis)

complete.cases(iris.mis$Sepal.Length)
View(iris.mis)

iris.mis[complete.cases(iris.mis),] # to get complete dataset
na.omit(iris.mis) #or use na.omit() to get same as above

iris.mis[!complete.cases(iris.mis),] # to get incomplete dataset


mean(iris.mis,na.rm=TRUE)
mean(iris.mis[,5], na.rm=T)
mean(iris.mis[,3], na.rm=T)
mean(iris.mis$Sepal.Length,na.rm=T)

plot(na.omit(iris.mis))

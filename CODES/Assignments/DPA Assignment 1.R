########Assignment 1 -----------------
getwd()  # to get the adress of current directory  "C:/Users/Anmole/Documents/GitHub/Project1"
cat("\014")    # to clear console to CTRL+L
rm(list=ls())  # to clear global environment
setwd("C:/Users/Anmole/Documents/GitHub/Project1/IMI/DPA")
#Question 1
mtcars
dim(mtcars)
class(mtcars)
str(mtcars)
mtcars

#Question 2
row.names(mtcars)
colnames(mtcars)

library(ggplot2)
mpg
row.names(mpg)
colnames(mpg)

#Question 3
manufs=c("Mazda",	"Mazda",	"Datsun",	"Hornet",	
"Hornet",	"Valiant",	"Renault",	"Mercedes",	"Mercedes",	
"Mercedes",	"Mercedes",	"Mercedes",	"Mercedes",	"Mercedes",	
"Cadillac",	"Lincoln",	"Chrysler",	"Fiat",	"Honda",	
"Toyota",	"Toyota",	"Dodge",	"AMC",	"Camaro",	"Pontiac",	
"Fiat",	"Porsche",	"Lotus",	"Ford",	"Ferrari",	"Maserati",
"Volvo")
mtcars1=as.data.frame(mtcars)
mtcars1$manufacturer=manufs
str(mtcars1)
View(mtcars1)

#Question 3a
library(dplyr)
length(mtcars1$manufacturer[mtcars1$manufacturer=="Mazda"])
#Question 3b
length(mtcars1$manufacturer[mtcars1$manufacturer=="Toyota"])
#Question 3c
sum(mtcars1$disp<200)
filter(mtcars1,disp<200) %>% arrange(desc(disp))
#Question 3d

df <-mtcars1[order(-mtcars1$disp, -mtcars1$cyl),]
head(df,5)

#Question 4
install.packages("sqldf")

library(sqldf)

non_eu=sqldf("select * from mtcars1
      where manufacturer in ('Mazda','Datsun','Cadillac',
      'Lincoln','Chrysler','Honda','Toyota','Dodge','AMC','Pontiac','Ford')")
eu=sqldf("select * from mtcars1
      where manufacturer not in ('Mazda','Datsun','Cadillac',
      'Lincoln','Chrysler','Honda','Toyota','Dodge','AMC','Pontiac','Ford')")
non_eu
Eurosales=eu

#Alternately

target <- c('Mazda','Datsun','Cadillac','Lincoln','Chrysler','Honda','Toyota','Dodge','AMC','Pontiac','Ford')

filter(mtcars1, manufacturer %in% target)

#Question 5
mtcars1$Euroflag[mtcars1$manufacturer %in% c('Mazda','Datsun','Cadillac',
                         'Lincoln','Chrysler','Honda','Toyota','Dodge','AMC','Pontiac','Ford')]='N'

mtcars1$Euroflag[is.na(mtcars1$Euroflag)]='Y'
mtcars1

#Question 6
mtcars1$Euroflag=as.factor(mtcars1$Euroflag)
str(mtcars1)

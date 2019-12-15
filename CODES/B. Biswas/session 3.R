#23/06/2019

empid<- c(21,23,31,62,02); empid
empname<- as.character(c("A","B","C","D","E"));empname
desig<- as.factor(c("RM","SMM","ASM","RM","SM"));desig
design<-factor(desig,levels=c("ASM","RM","SMM"), ordered=TRUE)

db<-as.Date.factor(c("1999-02-02","1998-02-02","1997-02-02","1996-02-02","1995-02-02"))
db
salary<- c(20000,23000,25000,240000,26000);salary
region<-as.factor(c("N","S","S","E","W"));region

employee<- data.frame(empid,empname,desig,db,salary,region,stringsAsFactors = F);employee
str(employee)
head(employee)
head(employee,2)
tail(employee,3)

#to view ceratin records which satisfy a certain condition

subset(employee,region=="N")
subset(employee,region=="S")

split(employee, desig)


View(mtcars)


subset(mtcars,cyl==8)
subset(mtcars,cyl>=4 & cyl<8)
split(mtcars,mtcars$cyl)


#installing a package

install.packages("ggplot2")
library(ggplot2)
View(diamonds)


#creating a comma seperated file and tab seperated file

read.csv("E:\R\data sets\comma sepersted.csv")    #would not work
d1<- read.csv("E:/R/data sets/comma sepersted.csv",stringsAsFactors = F)
d1
#stringsasfactor necessary to show character data as character else will be shown as factor

str(d1)


#imoort data option in environment

d2<- read.delim("E:/R/data sets/tab seperated.txt", stringsAsFactors = F)
str(d2)
install.packages("readr")
library(readr)
d3<- read_csv("E:/R/data sets/comma sepersted.csv")
d3


install.packages("readxl")
library(readxl)
excel_sheets("E:/R/data sets/Business Zone Data.xlsx")

# to import data of a particular sheet from a workbook

read_excel("E:/R/data sets/Business Zone Data.xlsx", sheet="Tower C")
read_excel("E:/R/data sets/Business Zone Data.xlsx")


#IF ELSE IF


i<- 5
if(i>5){
  print(">5")
}else if(i==5) {
      print("=5")
    }else {
  print("<5")
}


#functions

cn<- function(i)
if(i>5){
  print(">5")
}else if(i==5) {
  print("=5")
}else {
  print("<5")
}

cn(4)
cn(100)
cn(5)


time<- function(i,j){
  t<- i/j
return(t)
}
time(100,2)


# for user to enter the value
#read line
time<-function(d,s)
{
  d<- as.integer(readline(prompt="enter distance="))
  s<- as.integer(readline(prompt = "enter speed="))
  t<-d/s
  print(paste("time is",t))
  #paste0("time is",t)
  return(t)
}
time()



c<-1
while (c<5) {
  print("hello")
  c=c+1
}


for (i in 1:10) {
  print("hello")
  
}


install.packages("dplyr")
library(dplyr)
View(diamonds)
str(diamonds)

filter(diamonds, carat==0.26)
head(diamonds)
filter(diamonds, color=="E")

arrange(diamonds, carat)
arrange(diamonds, carat,cut)
mutate(diamonds,ratio=price/carat)
#group_by(diamonds,color)
summarize(diamonds,mean(price))


select(mutate(arrange(filter(diamonds, color=="E"),carat),ratio=price/carat),-depth)


#pipe operator
diamonds %>%
  filter(color=="E")%>%
  arrange(carat) %>%
  mutate(ratio=price/carat)%>%
  select(-depth) %>%
  group_by(clarity) %>%
  summarise(mean(price))



  
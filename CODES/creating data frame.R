## creating a data frame

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

#stringsasfactor


help(data.frame)

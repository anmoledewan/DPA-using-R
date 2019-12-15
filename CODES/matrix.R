#MATRIX

m1<- matrix(1:10, nrow=2);m1

m1<- matrix(1:10, nrow=2,byrow = TRUE);m1

m2<- matrix(sample(1:200,25,replace=F), nrow = 5, ncol = 5);m2
m2[2,2]
m2[2]
m2[2,]    #to get full row

m2[2:3,4:5]


dim(m2)
help(subset.matrix)
#all arithmetic operations can be performed on a matrix



##
#
#  ARRAY

a1<-array(20:50,dim = c(5,3,2))
a1
help(array)
a1[2,2,2]
dim(a1)
class(a1)

a1[a1>30] #vector type output
a1[,2,]   #matrix type output

which(a1==27)

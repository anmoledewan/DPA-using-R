# creating a matrix
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
result <- array(c(vector1,vector2),dim = c(3,3,2)) 
print(result)

View(result)

column.names <- c("COL1","COL2","COL3") 

row.names <- c("ROW1","ROW2","ROW3") 

matrix.names <- c("Matrix1","Matrix2")

View(result)

# naming rows and columns of a matrix
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,matrix.names))
print(result)

print(result[3,,2])
print(result[1,3,1])

#Addition of a matrix
array1<-array(c(vector1,vector2),dim=c(3,3))
array2<-array(c(vector1,vector2),dim=c(3,3))

m1<- array1
m2<- array2

result1<- m1+m2

print(result1)

rownames = c("row1", "row2", "row3")

colnames = c("col1", "col2", "col3") 
P <- matrix(c(vector1,vector2), nrow = 3, byrow = TRUE, dimnames = list(rownames, colnames)) 
print(P)

P1 <- matrix(c(1:9), nrow = 3, byrow = TRUE, dimnames = list(rownames, colnames)) 
print(P1)

# using datasets available in GGplot2

library(ggplot2)
View(mpg)
View(mpg$displ*2)
View(sum(mpg$displ))
View(prod(mpg$displ*mpg$cyl))
attach(mpg)
View(mpg)
model

print(seq(5,9,by=2))

# sort by displ column in  assending order
newdata<-mpg[order(mpg$displ),]
newdata
View(newdata)


newdata[1:10,1:2]# displays 10 rows and 2 columns
newdata[1:10]# displays 10 columns

tail(newdata, 5) #display the last 10 rows in new data

View(head(newdata, 10)) #display the first 10 rows in new data



#split the mpg files in 3 files based on the displ column

s1 <- subset(ggplot2::mpg,displ<=2.5)
s2 <- subset(ggplot2::mpg,displ>=3.9)
s3 <- subset(ggplot2::mpg,displ>2.5 & displ<3.9)
View(s3)


n1 <- newdata[1:78,]
n2 <- newdata[79:158,]
n3 <- newdata[158:234,]

View(n1)
View(n2)
View(n3)


library(ggplot2)
attach(mpg)
detach(mpg)
detach(mtcars)
attach(mpg)
View(mpg)

# join 3 tables to form one table rowwise
rbind(s1,s2,s3)

rbind(n1,n2,n3)

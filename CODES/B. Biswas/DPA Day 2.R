install.packages(c("dplyr", "sqldf","arules", "car", "caTools", "data.table", "dplyr", "forecast", "glmnet", "party", "partykit", "rattle", "Rcpp", "RGtk2", "rpart.plot"))

titanicData=Titanic
titanicData
t<-as.data.frame(titanicData)
class(titanicData)
summary(titanicData)
t
summary(t)

#Excercise 1
emp.data <- data.frame( emp_id = c (1:5), 
                        emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
                        salary = c(623.3,515.2,611.0,729.0,843.25), 
                        start_date = as.Date(c("2012-01-01", "2013-09-23", 
                                               "2014-11-15", "2014-05-11","2015-03-27")),
                        stringsAsFactors = FALSE) 

# Print the data frame. 
print(emp.data)

#To view it in format
View(titanicData)
View(emp.data)

#To see the structure of a variable
str(emp.data)
str(titanicData)
#############Vectors##########
# Create a vector. 
apple <- c('red','green',"yellow") 
print(apple) 

# Get the class of the vector. 
print(class(apple))


################List####################
# Create a list. 
list1 <- list(c(2,5,3),21.3,sin) 
# Print the list. 
print(list1)


################Matrix#####################
# Create a matrix. 
M1 = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3) 
M1

M2 = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE) 
M2
M1 = matrix( c(1,2,3,4,5,6), nrow = 2, ncol = 3) 
M1
M1[1,1]
#print(M)

matrix1 <- matrix(c(1,-1,-3,2,-2,33,3,0,-1,19,4,-25), nrow = 4,ncol=3,byrow=TRUE)
print(matrix1) 


matrix2 <- matrix(c(-3,-3,-3,0,1,-99,0,101,-1,-1,1,-1), nrow = 3,ncol=4,byrow=TRUE) 
print(matrix2)

m3<-matrix1 * matrix2
m4=matrix1 %*% matrix2



############Array###################
# Create an array. 
a <- array(c('green','yellow'),dim = c(3,3,2)) 
print(a)
a
# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector3,vector4),dim = c(3,3,2))
array2

##################Factors#############################
# Create a factor object. 
factor_matrix <- factor(M1) 
# Print the factor. 
print(factor_matrix) 
print(nlevels(factor_matrix))

####################Dataframes#################
titanicDF=as.data.frame(titanicData)
summary(titanicDF)

# Conditional statements----------------------
attach(t)
Age

titanicDF[titanicDF$Sex=="Male"]

length(titanicDF$Age)
  
subset(titanicDF,titanicDF$Age=="Child")
typeof(titanicDF$Age)

if(titanicDF[1,]$Age=="Child")
{
  print("Yes")
}

for (i in c(1:nrow(titanicDF)))
{
  
  if(titanicDF[i,]$Age=="Child")
  {
    print("True")
  }
  else
  {
    print("False")
  }
  
}

library("dplyr")
summarise(titanicDF)
titanicDF$Age[titanicDF$Age=="Child"]

library("ggplot2")
#install.packages("tidyr")
library("tidyr")

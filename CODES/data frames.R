## DATA FRAMES

data()
iris           #shows the complete data in console
View(iris)      # shows in seperate sheet

class(iris)
names(iris)


#columns are called as variables
#rows are attributes or observations or predictors

str(iris)
summary(iris)           #statiscal analysis of each variable
is.null(iris)
is.na(iris)


#to look details for a specific variable

mean(iris)          # does not give anything
mean(iris$Sepal.Length)


# to analyse only one variable completely - - take out each variable from the 
# data frame, save it as vector and do all the analysis

s1<- iris$Sepal.Length
s1; class(s1)


View(mtcars)
class(mtcars)
str(mtcars)
names(mtcars)
summary(mtcars)

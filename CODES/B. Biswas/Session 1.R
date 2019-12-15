getwd()
setwd()
?mean
# is the comment symbol, anything written after this is a comment and not a command
#for variable assignment use <- sign
x<-7
x
X<-2;X
# R is case sensitive
X<-9;X
X;x
X+x
# types of variables
#numbers, characters, boolean
# to know what type the variable is use the command 'class'
#boolean is TRUE/FALSE always in capital
class(x)
a<-"ABC"
class(a)
#date is another variable, stored in quotes as characters
#factors
#ordinal factor and nominal factor
#nominal - no rank associated, no sequence in data, eg north south east west
#ordinal - rank associated, ordered data, like hierarchy in an organisation
a1<-5; a1;class(a1)
a2<-3.5; a2;class(a2)
a3<-"AN"; a3;class(a3)
a4<-TRUE; a4;class(a4)
a5<-as.Date("03-01-1996");a5;class(a5)
# see for date
a1<-5L;a1;class(a1)
#writing L after a number gives it as integer and not as numeric
# %% represents modulus
# | pipe symbol, for or operator
# & for and operator
# relational operators >,<,>=,<=,==,!=
#data structures:- vector(1D array), matrix(2D array), array( multi dimensional)
# contd. ,data frame(table){most imp}, lists
#vector can have only 1 type of data either numeric or character, etc
# data frame is a collection of vectors
#lists is used to organize the data, rather than working on it

# data structures
#1 vector
v1<-c(1,51,5,5,6,2,6);v1
#c is used for combining the data in a vector
class(v1)
length(v1)
v2<-c("a","s","c"); v2
v3<-c("N","S","E","w");v3
v1<-c(1,5,"6");v1
#every object geys converted to character therefore only 1 type of data in a vector
v3<-as.factor(c("N","s","E","W"));v3; class(v3)
v4<-c("RM","SSM","SM");v4
v5<- factor(v4,levels = c("SM","SSM","RM"),ordered=TRUE);v5
class(v5)
v5<- factor(v4,levels = c("SM","SSM","RM"),ordered=FALSE);v5


#vector operations
a1<-c(1,2,5,7,9)
a2<-c(5,6,8,7,3)
a1+a2
a1-a2
a1*a2
a1/a2

a1<-c(1,5,8)
a2<-c(5,6,8,9,10)

a1+a2
a1-a2
#if length of both the vectors is not same it uses the recycling concept
#it goes from 1-1,2-2,3-3 and then as 4-1,5-2 and so on

#combining 2 vectors
a3<- c(a1,a2);a3

#statistical functions on a vector(inbuilt functions)
mean(a3)
median(a3)
sd(a3)
var(a3)
max(a3)
min(a3)
class(a3)
summary(a3)
#summary gives descriptive statistics for that vector
?sort
sort(a3)

sort(-a3) #decreaing order
rank(a3)
rank(a2); a2
a4<-c(1,2,NA,5,3);a4
mean(a4)
a5<-c(1,2,NULL,5,3);a5
mean(a5)
#operations can be performed on NULL but not on NA, except when done the following

mean(a5,na.rm = TRUE) #excluding NA and calc with NA
1:10  # to create a vector for a range
seq(from=10, to=50, by=5)
seq(from=10, to=100, length.out = 5)
seq(from=10, to=100, length.out = 90)
seq(from=10, to=100, length.out = 91)


x<- c(3,5,6,9,5,8,2)
x[2:5]
x==5
x[x==5]
x[x>=5]
x[c(1,tail(x,n=3))]
?tail # find out
x[tail(x,n=3)]

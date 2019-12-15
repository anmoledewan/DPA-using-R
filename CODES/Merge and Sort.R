# include library ggplot2
library(ggplot2)
View(mpg)
str(mpg) # structure of the dataset
attach(mpg) # you may skip this command and use dataframe name with "$" instead to access columns

#check row names
rownames(mpg)
row.names(mpg)

#check column names
colnames(mpg)

nrow(mpg) # number of records
ncol(mpg) # number of records

#Manufacturers
table(mpg$manufacturer)

# year
table(mpg$year)


# sort by "displ" ascending
newdata <- mpg[order(mpg$displ),] 

# check the top 10 rows of the newdata file, and only 3 columns
newdata[1:10,1:3]
# check the top 10 rows of the newdata file
head(newdata, 10)
# check the bottom 10 rows of the newdata file
tail(newdata, 10)


# sort by "displ" desc by putting a minus sign before the column
newdata1 <- mpg[order(-mpg$displ),]

# check the top 10 rows of the newdata1 file
head(newdata1, 10)
tail(newdata1, 10)


# Split the mpg file into three subsets
n1 <- newdata1[1:78,] # this signifies that i need rows 1 to 78 and all columns
n2 <- newdata1[79:158,] # this signifies that i need rows 79 to 158 and all columns
n3 <- newdata1[159:234,] # this signifies that i need rows 159 to 234 and all columns

# check the record counts in each
nrow(n1)
nrow(n2)
nrow(n3)

#Now join them to get back the mpg file again!
mpg_new<-rbind(n1,n2,n3)


########  Aternative Method by boundary selection ########
# Split the mpg file into three subsets
m1 <- subset(mpg,mpg$displ >= 1.6 & mpg$displ <= 3.1) # this signifies that i need rows with displ values between 1.6 and 3.1
m2 <- subset(mpg,mpg$displ >= 3.2 & mpg$displ <= 6) # this signifies that i need rows with displ values starting 3.2 and up to 6
m3 <- subset(mpg,mpg$displ >= 6.1 & mpg$displ <= 7) # this signifies that i need rows with displ values starting 6.1 and up to 7

#Now join them to get back the mpg file again!
mpg_new1<-rbind(m1,m2,m3)

# remove rows and column from a file
# for example in the notation mpg[m,n], 
# m denotes the row number and n denotes the column number
#remove first column
mpg_1<-mpg[,-1]
#remove first row
mpg_1<-mpg[-1,]

#create a new dataframe with only some columns from the mpg file
mpg3<-as.data.frame(cbind(mpg$model,mpg$displ,mpg$cyl))

#change the data type of any character class to factor or categorical data
mpg$class<-as.factor(mpg$class)

#check the data structure of the columns
str(mpg)


######### choose a sub file using multiple values ############

# I want to select cars with class : compact, 2seater, midsize

#first define a new list with these strings only
new_class<-c('compact', '2seater', 'midsize')

#now run the subset command with this list 
mpg_new_class<-mpg[mpg$class %in% new_class,]

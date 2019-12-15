## This file gives code to 
## Read a csv file ##Create a Graph ## Summary of data 
## Identify Missing and its treatment
## Identify Outliers and its treatment
## DataSplit for a cross-section, TRAIN:TEST and time-series data: In-sample:Out-of-sample
## Make functional transformations and Graphs for the 'Train (In-sample)' data
## Run a Bivariate Regression Model for each functional transformation
## Run the regression model
## Check Regression Diagnostics: Multicollineariry, Hetroscedasticity(cross-section data) and Autocorrelation (time-series data)
## Re-estimating a model after adjusting for Heteroscedasticity and Autocorrelation

###### READ THE FILE

myFile <- file.choose()                    			# Select the file 
myData  <- read.csv (myFile,header=TRUE)   			# Read the file		
#vote<-myData				   			# Reading VOTE and EXPN_SHARE data: this line has # to be changed for your file
CM<-myData				   			# Reading VOTE and EXPN_SHARE data: this line has # to be changed for your file
#df<-vote				   			# Renaming the datafile: This line has to be changed		
df<-CM
colnames(df)[colnames(df)=="CM"] <- "y1" 			# Renaming the columns	
colnames(df)[colnames(df)=="FLR"] <- "x1"			# Renaming the columns	
colnames(df)[colnames(df)=="PGNP"] <- "x2"			# Renaming the columns	
colnames(df)[colnames(df)=="TFR"] <- "x3"			# Renaming the columns	
df <-df[-c(1)] 						# Drop the column by index, dropping the first column 'Obs'
View(df)							

x1.3 <-log(df$x2)
x1.3
df<-cbind(df, x1.3)						# Adding columns
View(df)
##### PLOT
plot(y1~x1,data=df)				        	# Simple plot

#### ggplot2
library(ggplot2)						# Require ggplot2

#### SCATTER PLOT
ggplot(data = df, mapping = aes(x = x1, y = y1)) +
  geom_point(size=3, shape=20)+ggtitle("CM Vs FLR") 

ggplot(data = df, mapping = aes(x = x2, y = y1)) +
  geom_point(size=3, shape=20)+ggtitle("CM Vs PGNP") 

ggplot(data = df, mapping = aes(x = x3, y = y1)) +
  geom_point(size=3, shape=20)+ggtitle("CM Vs TFR") 
#### DESCRIPTIVE STATS
summary(df)
quantile (df$y1,  c(0.01, 0.05,0.95,0.99))			# QUARTILE
quantile (df$x1,  c(0.01, 0.05,0.95,0.99))
quantile (df$x2,  c(0.01, 0.05,0.95,0.99))
quantile (df$x3,  c(0.01, 0.05,0.95,0.99))
cor(df)  							# Pearsonian Correlation Coefficent

####Test of Normality

install.packages("tseries")
library (tseries)

#jarque.bera.test(df$y1, robust = TRUE, method = c("chisq", "mc"),
#               N = 0, na.rm = FALSE)
jarque.bera.test(df$y1) 
jarque.bera.test(df$x1) 
jarque.bera.test(df$x2) 
jarque.bera.test(df$x3) 

#### IDENTIFY MISSING & TREAT                                      # https://medium.com/coinmonks/dealing-with-missing-data-using-r-3ae428da2d17

is.na(df)
sum(is.na(df))
mean(is.na(df))
df$y1[df$y1 == 999] <- NA					# In case the unavailable values reported as '999' or something else, convert as NA

####List of R Packages MICE, Amelia, missForest, Hmisc, mi
install.packages("missForest")
library (missForest)
data ("df")
df.mis <- prodNA(df, noNA = 0.1)				# Generate 10% missing values at Random 
View(df.mis)					        # Check missing values introduced in the data


df.imp <- missForest(df.mis)  #impute missing values, using all parameters as default values
View(df.imp)
df.imp$ximp          #check imputed values

df.imp$OOBerror     #check imputation error, NRMSE

#comparing actual data accuracy
df.err <- mixError(df.imp$ximp, df.mis, df)
df.err



#### IDENTIFY OUTLIERS & TREAT  

par(mfrow = c(1, 2))
boxplot(df)

boxplot(df)							# BOXPLOT:1.5*IQR
abline(h = min(df), col = "Blue")
abline(h = max(df), col = "Yellow")
abline(h = median(df), col = "Green")
abline(h = quantile(df$y1, c(0.25, 0.75)), col = "Red")
abline(h = quantile(df$x1, c(0.25, 0.75)), col = "Red")

#### OUTLIERS TREATMENT, CAPPING OUTLIERS    
capOutlier <- function(y1){
  #qnt <- quantile(df$y1,  probs=c(.25, .75), na.rm = T)
  caps <- quantile(df$y1, probs=c(.05, .95), na.rm = T)
  #H <- 1.5 * IQR(df$y1, na.rm = T)
  #df$y1 <- ifelse (df$y1 < (qnt[1]-H),caps[1],df$y1)
  #df$y1 <- ifelse (df$y1 > (qnt[2]+H),caps[2],df$y1)  
  
  df$y1 <- ifelse (df$y1 < caps[1],caps[1],df$y1)
  df$y1 <- ifelse (df$y1 > caps[2],caps[2],df$y1)  
  return(y1)
}
df$y1=capOutlier(df$y1)						# Replacing extreme values with percentiles

capOutlier <- function(x1){
  
  caps <- quantile(df$x1, probs=c(.05, .95), na.rm = T)
  
  df$x1 <- ifelse (df$x1 < caps[1],caps[1],df$x1)
  df$x1 <- ifelse (df$x1 > caps[2],caps[2],df$x1)  
  return(x1)
}
df$x1=capOutlier(df$x1)						# Replacing extreme values with percentiles

capOutlier <- function(x2){
  caps <- quantile(df$x2, probs=c(.05, .95), na.rm = T)
  df$x2 <- ifelse (df$x2 < caps[1],caps[1],df$x2)
  df$x2 <- ifelse (df$x2 > caps[2],caps[2],df$x2)  
  return(x2)
}
df$x2=capOutlier(df$x2)						# Replacing extreme values with percentiles

capOutlier <- function(x3){
  caps <- quantile(df$x3, probs=c(.05, .95), na.rm = T)
  df$x3 <- ifelse (df$x3 < caps[1],caps[1],df$x3)
  df$x3 <- ifelse (df$x3 > caps[2],caps[2],df$x3)  
  return(x3)
}
df$x3=capOutlier(df$x3)						# Replacing extreme values with percentiles

View (df)
View (CM)

#### Cross-Section Data: Random Split: TRAIN AND TEST (70:30)

library (caTools) 					 	# Require (caTools)
set.seed(101)            				 	# This is used to create same sample everytime
split1=sample.split(df$y1,SplitRatio=0.70)
train=subset(df,split1==TRUE)
# train
View (train)
test=subset(df,split1==FALSE)
# test 	
View (test)

#### Time-Series Data: Split into In-sample and Out-of-Sample

myFile <- file.choose()                    			# Select the file 
myData  <- read.csv  (myFile,header=TRUE)   			# Read the file	
df 	<-myData	
#	train_ins <- read.csv(myData,nrows=2000)		# Creating a file with firt 2000 rows: In-sample 
train_ins = df[1:720,]						# In-sample
test_oos  = df[721:900,]					# Out of Sample	 





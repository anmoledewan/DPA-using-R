v<- c("6", "TRUE", "A")
v1<- c(1:50);v1
v2<- seq(f=1, t=50, length.out = 5);v2
v3<- seq(f=1, t=50, by = 5);v3
v4<- as.factor(c("A","B","C"));v4        
v5<-factor(v4, levels=c("B","C","A"), ordered = TRUE); v5

#date type vector
v6<- as.Date.factor(c("2019-02-02", "2018-02-02", "2017-02-02"));v6;class(v6)
v7<- Sys.Date()
Sys.time()
v7-v6
v6-v7
v8<- c(2,6,8,NA,7);v8
mean(v8)
mean(v8, na.rm=TRUE)
v9<- c(2,6,NULL,8,9);v9
mean(v9)
v10<- c(5,6,NULL,NA,5,6);v10
mean(v10,na.rm=TRUE)
p1<-c("p1","p2","p3","p4","p5","p6","p7","p8","p9","p10");p1
N<-c(10,12,14,15,16,17,18,1,15,5);N
S<- c(5,6,2,5,6,2,4,6,2,3);S
E<-c(6,5,23,6,8,4,1,5,6,8);E
W<-c(6,8,9,5,3,2,1,4,6,8);W
Amount=N+S+E+W;Amount
names(Amount)<-p1;Amount
price<-c(2,5,6,9,1,3,2,3,2,1);price
names(price)<-p1;price
price[price>5]
Amount[Amount>10 & Amount<30]
Amount[Amount<10 | Amount>30]
Amount[names="p3"]

#which command gives the index of the element
which(Amount==24)


#generating random vectors
rv<-c(sample(10:100,10,replace=F));rv

#training data= to create the model
#validation data= on which we execute the model


#set.seed= to fix the initial value and get the same set of random no

set.seed(12)
rv<-c(sample(10:100,10,replace=F));rv

mean(rv)
median(rv)
mode(rv)
var(rv)
sd(rv)
str(rv)
summary(rv)
max(rv)
min(rv)
class(rv)
length(rv)
rank(rv)
is.null(rv)
is.na(rv)


rv2<-c(3,5,6,3,2);rv2
rank(rv2)

#plotting graphs
plot(price,Amount,type="s",col="red",xlab="price",ylab="Amount",main="price vs amount")
help("plot")
hist(Amount)


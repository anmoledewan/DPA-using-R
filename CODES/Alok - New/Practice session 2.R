c(TRUE,TRUE,FALSE,FALSE)&c(TRUE,FALSE,FALSE,TRUE) #Comparing with the consequent elements of the vector
c(TRUE,TRUE,FALSE,FALSE)&&c(TRUE,FALSE,FALSE,TRUE) #Comparing with only first element of the vector
x<-0
if(x>3){print("x is a negative number")}
if(x<0){print('x is a negative number')}else if(x==0){print('x is zero')}else{print('x is a positive number')}

ctr<-1 #It is a continous loop
while(ctr<=7){
  print(paste('ctr is set to',ctr))
  ctr<-ctr+1
}

primes<-c(2,3,5,7,11,13)
for(p in primes){
  print(p)
}

primes<-c(2,3,5,7,11,13)     #working of for loop in two ways
for(i in 1:length(primes)){
  print(primes[i])
}

ggplot(mpg,aes(x=displ,y=hwy))+geom_point()


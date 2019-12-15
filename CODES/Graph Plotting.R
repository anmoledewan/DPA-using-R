str(mpg)
str(iris)
str(diamonds)
str(economics)

# MyGraph<-ggplot(MyData, aes(variable for x axis, variable for y axis)) + geom()

#plot graph method 1
ggplot(mpg,aes(x=displ,y=hwy))+geom_point() 

#plot graph method 2
ggplot(mpg,aes(displ,hwy))+geom_point() 

#plot graph with line
ggplot(mpg,aes(displ,hwy))+geom_point()+geom_line() 

# to add colour for each different class variable
ggplot(mpg,aes(displ,hwy,color=class))+geom_point()+geom_line() 

# different shapes for points for each drv variable
ggplot(mpg,aes(displ,hwy,shape=drv))+geom_point()+geom_line()

#different size of lines for each cyl variable type
ggplot(mpg,aes(displ,hwy,size=cyl))+geom_point()+geom_line()

#To plot a histogram
ggplot(mpg,aes(hwy))+geom_histogram()+stat_bin(bins=8) #bins define no. of class interval

#define colour for plot points
ggplot(mpg,aes(displ,hwy))+geom_point(colour="blue")
ggplot(mpg,aes(displ,hwy))+geom_point(colour="red")

#plot graph with smooth line, shaded area is standard error
ggplot(mpg,aes(displ,hwy))+geom_point()+geom_smooth()+geom_line()
ggplot(mpg,aes(displ,hwy))+geom_point()+geom_line()

#different graph for different class
ggplot(mpg,aes(displ,hwy))+geom_point()+facet_wrap(~class)
ggplot(mpg,aes(displ,hwy))+geom_point()+facet_wrap(~class)+geom_line()


## For IRIS data set

#plot graph method 1
ggplot(iris,aes(x=Sepal.Length,y=Petal.Length))+geom_point()

#plot graph method 2
ggplot(iris,aes(Sepal.Length,Petal.Length))+geom_point() 

#plot graph with line
ggplot(iris,aes(Sepal.Length,Petal.Length))+geom_point()+geom_line()

# to add colour for each different class variable
ggplot(iris,aes(Sepal.Length,Petal.Length,color=Species))+geom_point()+geom_line() 

# different shapes for points for each drv variable
ggplot(iris,aes(Sepal.Length,Petal.Length,shape=Petal.Width))+geom_point()+geom_line()

#different size of lines for each cyl variable type
ggplot(iris,aes(Sepal.Length,Petal.Length,size=Petal.Width))+geom_point()+geom_line()

#different graph for different Species variable
ggplot(iris,aes(Sepal.Length,Petal.Length))+geom_point()+facet_wrap(~Species)
ggplot(iris,aes(Sepal.Length,Petal.Length))+geom_point()+facet_wrap(~Species)+geom_line()


#jitter : 
ggplot(mpg,aes(drv,hwy))+geom_point()
ggplot(mpg,aes(drv,hwy))+geom_point()+geom_jitter()
?geom_jitter
ggplot(iris,aes(Sepal.Width,Petal.Length))+geom_point()
?diamonds
structure(diamonds)
ggplot(diamonds,aes(cut,depth))+geom_point()
ggplot(mpg,aes(drv,hwy))+geom_boxplot()
ggplot(mpg,aes(hwy,drv))+geom_boxplot()

#boxplot
ggplot(mpg,aes(model,hwy))+geom_boxplot()

#violin
ggplot(mpg,aes(drv,hwy))+geom_violin()

ggplot(mpg,aes(drv,hwy))+geom_violin() + xlab("bhapp")

ggplot(mpg,aes(drv,hwy))+geom_violin() + xlab(NULL) + ylab("Delhi")
ggplot(mpg,aes(displ))+geom_histogram()
ggplot(mpg,aes(displ))+geom_histogram()+ facet_wrap(~drv)       
ggplot(mpg,aes(displ))+geom_histogram()+ facet_wrap(~drv,ncol=2)
ggplot(mpg,aes(displ,fill=drv))+geom_histogram(binwidth = 0.5)+ facet_wrap(~drv,ncol=2)

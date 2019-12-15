cat("\014")    # to clear console to CTRL+L
rm(list=ls())  
library(ggplot2)
str(mpg)
?mpg
str(iris)
str(diamonds)
str(economics)

### Lecture 1---------------
(mygraph = ggplot(mpg,aes(x=displ,y=hwy,colour=class,shape=drv))+geom_point()+geom_line())  #Scatter Plot

(mygraph = ggplot(mtcars,aes(mtcars$disp,mtcars$gear))+geom_line())


(mygraph = ggplot(mpg,aes(manufacturer,colour=class,size=cyl))+geom_bar())

(mygraph = ggplot(diamonds,aes(diamonds$x
                              ,diamonds$price,colour=diamonds$carat))+geom_point())

ggplot(mpg,aes(hwy))+geom_histogram()+stat_bin(bins=10)


(mygraph = ggplot(mpg,aes(x=displ,y=hwy))+geom_point(colour="blue"))

(mygraph = ggplot(mpg,aes(x=displ,y=hwy))+geom_point(aes(colour="blue"))) #Error as aesthetics can be defined in ggplot itself

(mygraph = ggplot(mpg,aes(x=displ,y=hwy))+geom_point(colour="blue")+geom_line(colour="gray"))
(mygraph = ggplot(mpg,aes(x=displ,y=hwy))+geom_line(colour="blue"))
(mygraph = ggplot(mpg,aes(x=displ,y=hwy))+geom_smooth(colour="blue")+geom_line(colour="red"))
ggplot(mpg,aes(displ,hwy))+geom_point()+facet_wrap(~class)

ggplot(mpg,aes(displ,hwy))+geom_point()+facet_grid(~class)

ggplot(mpg,aes(displ,hwy))+geom_point()+facet_null()

ggplot(iris,aes(Petal.Length,Sepal.Length))+geom_smooth()+geom_boxplot()+geom_point()+facet_grid(~Species)+geom_line()


### Lecture 2---------------
ggplot(mpg,aes(drv,hwy))+geom_point()+geom_jitter()
#jitter introduces random noise based on frequency of values so that it can be found out as to 
# which set/cluster has more values and so on
ggplot(iris,aes(Petal.Length,Species))+geom_point() + geom_jitter()
str(diamonds)
ggplot(diamonds,aes(x,cut))+geom_point()+geom_jitter(colour="yellow")
str(mpg)
ggplot(mpg,aes(model,hwy))+geom_boxplot()
ggplot(mpg,aes(drv,hwy))+geom_violin()+geom_jitter(colour="blue")
ggplot(mpg,aes(displ,hwy))+geom_boxplot()+geom_point()

ggplot(iris,aes(Species,Sepal.Length))+geom_violin()+geom_jitter(colour="blue")+xlab("Flower Species")+ylab("Sepal Length")
ggplot(iris,aes(Species,Sepal.Length))+geom_violin()+geom_jitter(colour="blue")+xlab(NULL)

ggplot(mpg,aes(displ,fill=drv))+geom_histogram(binwidth=0.5)+facet_wrap(~cyl,ncol=2)

library(ggplot2)
View(iris)
ggplot(data=iris)#screen will be there but no output
#so add next layer after data layer aesthetics, include axis
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))
p<-ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))
p+geom_point()
#facet layer not mandatory all other pending layers are not mand
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width)) +geom_point()+facet_wrap(~Species)
#satatistics layer allows u to plot statistical values
#calculated from the data

ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()+facet_wrap(~Species)+geom_smooth(method="lm")

#coordinate layer: allows yot to adjust x and y axis

library(dplyr)
ggplot(filter(iris,Species=="setosa"),aes(x=Sepal.Length,y=Sepal.Width))+geom_point()+coord_cartesian()
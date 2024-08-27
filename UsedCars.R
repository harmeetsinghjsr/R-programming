usedcars<-read.csv("C:/Users/hs978/CodeSpace/R-programming/usedcars.csv")
View(usedcars)
str(usedcars)
summary(usedcars$color,usedcars$price)

summary(usedcars[c("color","price")])
#five parts
quantile(usedcars$price)
#six parts
quantile(usedcars$price,probs = c(0,0.2,0.4,0.6,0.8,1))
quantile(usedcars$price,seq(0,1,0.2))
quantile(usedcars$price,seq(0,1,length.out=6))
#table
table(usedcars$color)
#table with percentage
prop <- prop.table(table(usedcars$model))#these values are determined by the number of rows in the dataset
round(prop,digits=2)
#round in percentage
library(scales)
library(tidyr)
# table with percentage
prop_percent <- percent(prop, accuracy = 0.01) # round to 2 decimal places and display as percentages
prop_percent

range(usedcars$year)
is.na(usedcars)
na.omit(usedcars)
replace_na(usedcars,list(year=,mileage=))
sum(is.na())
# KNN algorithm
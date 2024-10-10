df<-read.csv("C:/Users/hs978/CodeSpace/R-programming/Regression/insurance.csv")
df<-df[-1]
View(df)

df$sex<-as.numeric(as.factor(df$sex))
View(df)

df$region<-as.numeric(as.factor(df$region))
View(df)

df$smoker<-as.numeric(as.factor(df$smoker))
View(df)

m<-lm(charges~.,data=df)
summary(m)

y_pred<-predict(m,df)
y_pred


mse<-mean((df$charges-y_pred)^2)
mse

rse<-1-(sum((df$charges-y_pred)^2)/sum((df$charges-mean(df$charges))^2))
rse

msemodel<-mean(m$residuals^2)
msemodel

plot(df$charges,y_pred,col="cyan",pch=0,main="regression Line")
abline(m,col="red")

cor(df[c("age","bmi","children","charges")])
pairs(df[c("age","bmi","children","charges")])

library(psych)
pairs.panels(df[c("age","bmi","children","charges")])




set.seed('z')
indextrain<-sample(1:nrow(df),0.8*nrow(df))
train<-df[indextrain,]
test<-df[-indextrain,]


m<-lm(charges~.,data=train)
summary(m)
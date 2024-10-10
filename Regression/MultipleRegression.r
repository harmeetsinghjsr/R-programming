y<-c(1,3,4,5,2)
x1<-c(1,4,4,5,6)
x2<-c(2,3,4,5,6)

mean_y<-mean(y)
mean_x1<-mean(x1)
mean_x2<-mean(x2)

model<-lm(y~x1+x2)
summary(model)

msemodel<-mean(model$residuals^2)

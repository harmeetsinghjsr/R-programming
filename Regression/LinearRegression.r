x<-c(1,2,4,5)
y<-c(3,4,2,4,5)
 
mean_x<-mean(x)
mean_y<-mean(y)

m<-sum((x-mean_x)*(y-mean_y))/sum((x-mean_x)^2)

c<-mean_y-m*mean_x

print(paste("m:",m))

y_pred<-m*x+c
y_pred

#mean squared error
mse<-sum((y-(m*x+c))^2)/length(x)
mse

#root squared error
rse<- 1-(sum(y-y_pred)^2)/sum((y-mean_y)^2)
rse

model<- lm(y ~ x)
summary(model)

msemodel<-mean(model$residuals^2)
msemodel

plot(x,y,col="cyan",pch=0,main="regression Line")
abline(m,col="red")

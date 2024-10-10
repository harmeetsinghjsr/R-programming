x<-c(8,10,12,20)
y<-c(10,13,16,28)

model<- lm(y ~ x)
summary(model)

y_pred<- predict(model, data.frame(x=c()))
y_pred

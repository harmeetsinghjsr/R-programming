df<-read.csv(file.choose())
View(df)

df<-df[order(df$Level),]
View(df)

m<-lm(Salary ~ poly(Level, degree=4),data = df)

# plot(df$Level,df$Salary,col="red",pch=0)
# abline(m,col=)

library(ggplot2)
ggplot()+
geom_point(aes(x=df$Level, y=df$Salary),color='red')+
geom_line(aes(x=df$Level, y=predict(m)),color='cyan')+
ggtitle('Polynomial Regression')+
xlab('Level')+
ylab('Salary')

# Predicting a new result with Polynomial Regression
predict(m,data.frame(Level=6.5))

summary
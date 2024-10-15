df<-read.csv(file.choose())
View(df)

df<-df[order(df$Age),]
View(df)

m<-lm(Purchased~.,data=df)

plot(m,col="black")

# library(ggplot2)
# ggplot()+
# geom_point(aes(x=df$Age, y=df$EstimatedSalary),color='red')+
# geom_line(aes(x=df$Age, y=predict(m)),color='cyan')+
# ggtitle('Polynomial Regression')+
# xlab('Age')+
# ylab('EstimatedSalary')
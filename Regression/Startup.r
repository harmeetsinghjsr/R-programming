df<-read.csv("C:/Users/hs978/CodeSpace/R-programming/Regression/Startups.csv")
View(df)

df$State<-as.numeric(as.factor(df$State))
View(df)

cor(df[c("R.D.Spend","Administration","Marketing.Spend","Profit")])
pairs(df[c("R.D.Spend","Administration","Marketing.Spend","Profit")])

set.seed('a')
trainindex<-sample(1:nrow(df),0.75*nrow(df))
train<-df[trainindex,]
test<-df[-trainindex,]

m<-lm(Profit~.,data=train)
summary(m)

y_pred<-predict(m,test)
y_pred
head(y_pred)

plot(test$Profit,y_pred,col="cyan",pch=0,main="regression Line")
df1<-data.frame(R.D.Spend=165349.2,Administration=136897.8,Marketing.Spend=471784.1,State=1)
pred<-predict(m,df1)
pred
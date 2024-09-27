library(dplyr)
library(caret)
library(tidyverse)
install.packages("tidyverse")
library(corrplot)

df<-read.csv(file.choose())
View(df)

#1)applying naive bayes

set.seed('h')
train_index<-sample(1:nrow(df), size=0.75*nrow(df))
train_data<-df[train_index,]
test_data<-df[-train_index,]

naive_model<-naiveBayes(Play~., data=train_data)
naive_pred<-predict(naive_model, test_data)
naive_pred

naive_cm<-confusionMatrix(naive_pred, test_data$Play)
naive_cm


#2) applying decision tree

set.seed('h')
train_index<-sample(1:nrow(df), size=0.75*nrow(df))
train_data<-df[train_index,]
test_data<-df[-train_index,]


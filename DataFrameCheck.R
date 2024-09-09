#create a data frame with column name, rollno, subject
#name , abc , null, xyz, null pqr
#rollno 1,2,na,4
#subject math,science,na,english
library(class)
df<-data.frame(name=c("abc",NA,"xyz","pqr"),rollno=c(1,2,NA,4),subject=c("R","Java",NA,"Python"))
#find out total no of null values
sum(is.na(df))

#replace nulll values of rollno with 0, name column with "A" and subject with "S"
df$rollno[is.na(df$rollno)]<-0
df$name[is.na(df$name)]<-"A"
df$subject[is.na(df$subject)]<-"S"
df
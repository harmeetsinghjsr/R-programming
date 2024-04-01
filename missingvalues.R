#is.na()=find missing values
#is.nan()=find not a number values
#na.omit()=remove missing values

x<-c(NA,2,3,NA,5,6,7,NA,9)
is.na(x)
is.nan(x)



x<-c(1,2,NA,3,NA,4)
d<-is.na(x)
d
x[!d]


x<-c(1,2,0 / 0,3,NA,4,0 / 0)
x
x[!is.na(x)]
x[!is.nan(x)]



df<-data.frame(c1= 1:8,c2=factor(c('A','B','C','D','E','F','G','H')))
df[4,1]<-df[5,1]<-NA 
df
levels(df$c2)
na.fail(df)
na.exclude(df)
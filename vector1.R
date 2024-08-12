vec1<- c(0,2)
vec2<- c(TRUE, FALSE)

cat("elments wise and",vec2 & vec1)

cat("elments wise or",vec2 | vec1)

cat("elments wise not",!vec2)

cat("logical and",vec2 && vec1)

cat("logical or",vec2 || vec1)

cat("logical not",!vec2)

typeof(vec1)


a<-c(1,2,3,4,5,6)
#element at index 4
a[4]

#excluding value at index 3
a[-3]

#elements from index 2 to 5
a[2:5]

a[c(0,0,1,1)]

#perform arithematic operations on vectors
a<-c(1,2,3,4,5,6)
b<-c(1,2,3,4,5,6)
a+b
a-b
a*b
a/b
a%%b
a%/%b
df<-data.frame(a,b)
df
#add a new column to the data frame
df$c<-c(1,2,3,4,5,6)
df
#cbind
cbind(df,c(1,2,3,4,5,6))
#rbind
rbind(df,c(1,2,3))
df
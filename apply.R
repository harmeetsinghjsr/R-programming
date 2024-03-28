apply function:
apply function is used to apply a function to the rows or columns of a matrix or an array. 
The basic syntax of apply function is as follows:  
apply(X, MARGIN, FUN, ...)
X is an array or matrix
x<-matrix(c(1,2,3,4), nrow=2, ncol=2)
x
apply(x, 1, sum)
apply(x, 2, sum)
apply(x, 2, mean)
lapply(x, 1, sum)



a<-c("abc","def","ghi")
a
print()
lapply(a, toupper)


a=1:3
f<-function(x) x^2
lapply(a,f)
sapply(1:4,sqrt)

out<-numeric(4)
for(i in 1:4)
{
  out[i]<-i^2
}
out



x<-list(A=1:5, B=6:10, C=1)
sapply(x, length)



y<-list(A=1:5, B=6:10, C=1)
sapply(y, length)


#tapply
x<-c(1,2,3,4,5)
f<-factor(c("a","b","a","b","a"),labels=c("a","b"))
tapply(x,f,mean)


mapply(rep, 1:4, 4:1)
mapply(rep,times=1:4,x= 4:1)
mapply(rep,times=1:4,MoreArgs=list(x=42))
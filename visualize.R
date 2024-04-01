library(visdat)
data<-data.frame(x=c(1,2,3,4,5),
y=c(1,2,3,4,5),
z=c(1,2,3,4,5),
a=c('a','b','c','d','e'),
b=c(2.5,3.5,4.5,5.5,6.5),
c=c(TRUE,FALSE,TRUE,FALSE,TRUE),
d=c("2+5j","3+6j","4+7j","5+8j","6+9j")
)

vis_dat(data)

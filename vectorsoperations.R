#arithmetic
a<-c(1,3,5,7,9)
b<-c(2,4,6,8,10)
a+b
a-b
a*b
a/b
a%%b


#duplicate index

q<-c("A","B","C","D","E","F")
q[c(2,4,4,3)]




#slicing vector

d<-c("A","B","C","D","E","F","G")
d[2:5]



#outof order

q<-c("A","B","C","D","E","F","G")b<-q[2:5]
q[c(2,1,3,4,6,5)]



#named vectors members

z=c("A","B")
z
names(z)<-c("Start","End")
z


d=c("North","South","East","West")
d
names(d)<-c("N","S","E","W")
d
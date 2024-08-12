#numeric

d<- 45.5
nv<- c(10.1,10.2,33.2,h)
d
nv
class(d)
class(nv)




#integer

d<-as.integer(5)
e<-5L
int_v<-c(1,2,3,4,5)
int_v<-as.integer(int v)
int_v1<-c(1L,2L,3L,4L,5L)
class(d)
class(e)
class(int_v)
class(int_v1)




#character

d<-'ABC'
e<-"DEF"
f<-65
f<-as.character(f)
d
e
f

char_v<-c(1,2,3,4,5)
char_v<-as.character(char_v)
char_v1<-("A","B","C","D")
char_v
char_v1
class(int_v)
class(int_v1)




#logical

d<-as.integer(5)
e<-as.integer(6)
f<-as.integer(7)
g<->e
h<-e<f
g
h
log_vec<-c(d<e,d<f,e<d,e<f,f<d,f<e)
log_vec
class(g)
class(h)
class(log_vec)




char_vec<-c("ABC"=21,"HAR"=23,"LOL"=25)
char_vec
char_vec["ABC"]




#index autorequest

a<-c(1,2,3,4,5,6)
a[c(TRUE,FALSE,TRUE,FALSE,TRUE,TRUE)]

a<-c("A","B","C","D")
b<-c(TRUE,FALSE,TRUE,TRUE)
a[b]



#combining two or more vectors

p<-c(1,2,3,4,5,6,7,8)
q<-c("A","B","C","D","E","F","G","H")
r<-c(p,q)
r

ls()

ls(all.names = TRUE)

class(f)


rm(p)
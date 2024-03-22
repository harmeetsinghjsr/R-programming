
#predefined functions in r programming
x<- -10
y<- 20.6
z=30
abs(x)	
#Returns the absolute value of x
sqrt(abs(x))
#Returns the square root of the absolute value
ceiling(y)
#Rounds up to the nearest integer
floor(y)
#Rounds down to the nearest integer
sin(z)
tan(z)
cos(z)
trunc(y)
#Trims y to have no decimal plac
round(y, digits = 2)
#rounds y to specified number of decimal
log(y)
log10(y)
exp(y)
grep("a", c("a", "b", "c", "d"))
grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE,
     fixed = TRUE, useBytes = FALSE, invert = FALSE)
#Returns the index of the element in x that contains the pattern

x="Hello World Hello"
gsub("a", "b", c("a", "b", "c", "d"))
sub("hel","owe",x,ignore.case = FALSE)
sub("hel","owe",x,ignore.case = TRUE)

strsplit("xyz","")

strsplit("xyz","y")

paste("z",1:3,sep="")
paste("z",1:3,sep="&y")
#summary of the data
a<-c(1,2,3,4,5,6,7,8,9,10)
summary(a)
x=read.csv(file.choose())
str(x)
#returns a vector containing the names and values

toupper("hello")
tolower("HELLO")
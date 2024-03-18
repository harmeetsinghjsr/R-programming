x<-as.numeric(readline())
i=1;
while(i < 11){
 print(x=x*i)
 i=i+1
}




x<-LETTERS[1:10]
for(i in x){
  print(i)
}



x <- switch(3, "shubham","nishika","alok","satyam")
print(x)

ax=1
bx=2
y = switch(ax+bx,"hello shubham","hello raju","hello guru","hello vaishnavi")
print(y)




y="21"
x = switch(
  y,
  "9"="hello arpita",
  "12"="hello vaishali",
  "18"="hello nishka",
  "21"="hello guru"
)
print(x)




x="1"
y="8"
a=switch(
  paste(x,y,sep=""),
  "9"="hello arpita",
  "12"="hello vaishali",
  "18"="hello nishika",
  "21"="hello shubham"
)
print(a)




x="2"
y="1"
a=switch(
  paste(x,y,sep=""),
  "9"="hello arpita",
  "12"="hello vaishali",
  "18"="hello nishika",
  "21"="hello shubham"
)
print(a)



x <- 10:20
for (val in x){
  if (val == 15){
    next
  }
  print(val)
}





#use of break statement
a <- 1
while (a<20){
  print(a)
    if (a == 15)
      break
    a = a+1
  }




x <- letters[1:10]
for (i in x){
  print(i)
}
for (i in 1:10)
{
  print(i^2)
}




#for loop in vectors
v <- c(1,3,5,7,9)
for(i in v)
{
  print(i)
}





subjects <- c('java','python','r programming')
for (i in subjects){
  print(i)
}




#for loop in matrix
m <- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
for (i in m){
  print(i)
}




#while loop
number <- as.integer(readline())
sum = 0
while (number<=10){
  sum = sum+number
  number=number+1
}
print(sum)




v <- c("helo","world")
count <- 2
while(count <=7){
  print(v)
  count=count+1
}




n = as.numeric(readline("Enter a value = "))
cat("numbers from ", n,"to 0")
while(n>=0){
  print(n)
  n=n-1
}
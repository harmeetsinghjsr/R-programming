a=8
b=7
if(a>b){
    print(paste(a," is greater than ",b))
    print(paste("The condition (a<b) is not satisfied"))
}else{
   print(paste(a,"is less than ",b))
}

a=8
b=7
if(a<b){
  print(paste(a," is smaller than ",b))
  print(paste("Terminated if condition"))
}else{
  print(paste(a,"is greater than ",b))
  print("The condition (a<b) is not satisfied")
  print("Executed else condition")
}

vec <- c(1, 2, 3, 4, 5)
sumsq <- 0
for(i in vec){
  sumsq <- sumsq + i^2
}
print(paste("The sum of squares of the vector is", sumsq))

#palindrome number
a<-as.integer(readline("Enter a number : "))
b<-a
rev<-0
while(a>0){
  rev<-rev*10 + a%%10
  a<-a%/%10
}
if(b==rev){
  print("Number is palindrome.")
}else{
  print("Number is not a palindrome.")
}
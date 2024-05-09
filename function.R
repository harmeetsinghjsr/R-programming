a<-10
new.function<-function(a){
for (i in 1:a)
{
    b<-i^2
    print(b)
}
}
new.function(a) # Call the function





#check whether a number is even or odd using function
x<-5
even.odd<-function(x){
    if (x%%2==0){
        print(paste(x,"is an even number"))
    }else{
        print(paste(x,"is an odd number"))
    }
}
even.odd(10) # Call the function






#find area of circle using function
area.circle<-function(r){
  area<-pi*r^2
  print(paste("The area of the circle is",area))
}






#area and perimeter of rectangle using function
rectangle.info<-function(l,b){
  area<-l*b
  perimeter<-2*(l+b)
  print(paste("The area of the rectangle is",area))
  print(paste("The perimeter of the rectangle is",perimeter))
}











library(base) # Import the base library to access the 'pi' constant and 'print' function

calc<- function(a,b)
{
  sum<-a+b
  diff<-a-b
  prod<-a*b
  quot<-a/b
  rem<-a%%b
  
  print(paste("Sum =", sum)) # Print the sum
  print(paste("Difference =", diff)) # Print the difference
  print(paste("Product =", prod)) # Print the product
  print(paste("Quotient =", quot)) # Print the quotient
  print(paste("Remainder =", rem)) # Print the remainder
}

calc(5,2)



f<-function(a,b,c)
{
  sum<-a*b+c
  print(sum)
}
f(2,3,b=4)



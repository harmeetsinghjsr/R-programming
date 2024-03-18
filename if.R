a<-10
if(a>10){
  paste("a is greater than 10")
}
else{
  cat("a is less than 10")
}


number <- as.integer(readline(prompt="Please enter a number: "))

if (number %in% 2 == 0){
  print(paste(number, "is even"))
}
else
{
  print(paste(number, "is odd"))
}


# check whether the input string is a vowel or not?
vowel <- readline(prompt="Please enter a character: ")
if (vowel %in% c("a", "e", "i", "o", "u"))
{
  print(paste(vowel, "is a vowel"))
}
else
{
  print(paste(vowel, "is not a vowel"))
}



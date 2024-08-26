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
#all types of datatypes used in r

# Numeric
num <- 10

# Character
char <- "Hello, World!"

# Logical
logical <- TRUE

# Integer
integer <- 5L

# Complex
complex <- 3 + 2i

# Factor 
factor <- factor(c("A", "B", "A", "B"))

# Date
date <- as.Date("2022-01-01")

# POSIXct
datetime <- as.POSIXct("2022-01-01 12:00:00")

# NULL
null <- NULL

# List
list <- list(1, "two", TRUE)

# Data frame
df <- data.frame(
    stringsAsFactors = FALSE,
    Name = c("John", "Jane", "Mike"),
    Age = c(25, 30, 35),
    Married = c(TRUE, FALSE, TRUE)
)

# Print the data types
cat("Numeric:", typeof(num), "\n")
cat("Character:", typeof(char), "\n")
cat("Logical:", typeof(logical), "\n")
cat("Integer:", typeof(integer), "\n")
cat("Complex:", typeof(complex), "\n")
cat("Factor:", typeof(factor), "\n")
cat("Date:", typeof(date), "\n")
cat("POSIXct:", typeof(datetime), "\n")
cat("NULL:", typeof(null), "\n")
cat("List:", typeof(list), "\n")
cat("Data frame:", typeof(df), "\n")
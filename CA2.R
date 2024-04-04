#A)  Function To Print The Fibonacci Sequence Using A Loop For 15 Elements And First No. Start From 7.
fibonacci <- function(n){
  a <- 7
  b <- 8
  for(i in 1:n){
    print(a)
    nth <- a + b
    a <- b
    b <- nth
  }
}
fibonacci(15)



#B) R Program To Create With 4 Columns And Group With Subjects And Get The     Aggregates. Create A Dataframe With 4 Columns.
# subjects   id    names   marks
#       java  1   manoj    89
#     python  2     sai    89
#       java  3 mounika    76
#       java  4   durga    89
#        php  5 deepika    90
#        php  6  roshan    67

# I) Aggregate Sum Of Marks With Subjects
# Ii) Aggregate Minimum Of Marks With Subjects
# Iii) Aggregate Maximum Of Marks With Subjects
# iv)Aggregate mean of marks with Subject
subjects <- c("java","python","java","java","php","php")
id <- c(1,2,3,4,5,6)
names <- c("manoj","sai","mounika","durga","deepika","roshan")
marks <- c(89,89,76,89,90,67)
df <- data.frame(subjects,id,names,marks)
print(df)
#aggregate operations using aggregate function 
aggregate(df$marks,by=list(df$subjects),sum)
aggregate(df$marks,by=list(df$subjects),min)
aggregate(df$marks,by=list(df$subjects),max)
aggregate(df$marks,by=list(df$subjects),mean)


# 2) A) Print Following Pattern With The Help Of Nested Loop And Use Star Symbol For Printing Pattern.
# *                                        
# * *                               
# * * *
# * * * *
# * * * * *

for(i in 1:5){
  for(j in 1:i){
    cat("* ")
  }
  cat("\n")
}


# Q3. a) From Titanic dataset Analyze following

#titanic inbuilt function 
library(dplyr)
?dplyr
str(Titanic)
View(Titanic)

survival_ratio <- apply(Titanic, c(1, 2, 3), function(x) x[2] / sum(x))

# Print the survival ratio
print(survival_ratio)

data <- array(c(0, 0, 35, 0, 0, 0, 17, 0, 118, 154, 387, 670, 4, 
            13, 89, 3, 5, 11, 13, 0, 1, 13, 14, 0, 57, 14, 75, 192, 140, 
            80, 76, 20), 
          dim = c(4L, 2L, 2L, 2L), 
          dimnames = list(Class = c("1st", "2nd", "3rd", "Crew"), 
                  Sex = c("Male", "Female"), 
                  Age = c("Child", "Adult"), 
                  Survived = c("No", "Yes")))

# Print the recoded data
print(data)



# b.) Create an array of two 3x3 matrices each with 3 rows, 3 columns and display them

# Create two 3x3 matrices
matrix1 <- matrix(1:9, nrow = 3, ncol = 3)
matrix2 <- matrix(10:18, nrow = 3, ncol = 3)

# Combine the matrices into an array
array <- array(c(matrix1, matrix2), dim = c(3, 3, 2))

# Print the array
print(array)


# Q4. a) From the R inbuilt dataset MTCARS filter the Mpg for Cars having gears more than 3 and car is automatic with more than 3 cylinders. Filter this dataset via 

# i. Subset without using any package or function
# ii. Subset with SUBSET function
# iii. Subset using DPLYR package
# iv. Subset using SQL select query

library(dplyr)
?dplyr
str(mtcars)
View(mtcars)
# i. Subset without using any package or function
filtered_mtcars <- mtcars[mtcars$gear > 3 & mtcars$am == 1 & mtcars$cyl > 3, ]
print(filtered_mtcars$mpg)

# ii. Subset with SUBSET function
filtered_mtcars_subset <- subset(mtcars, gear > 3 & am == 1 & cyl > 3)
print(filtered_mtcars_subset$mpg)

# iii. Subset using DPLYR package
filtered_mtcars_dplyr <- mtcars %>%
  filter(gear > 3, am == 1, cyl > 3) %>%
  select(mpg)
print(filtered_mtcars_dplyr)

# iv. Subset using SQL select query
library(sqldf)
query <- "SELECT mpg FROM mtcars WHERE gear > 3 AND am = 1 AND cyl > 3"
filtered_mtcars_sql <- sqldf(query)
print(filtered_mtcars_sql)


# b.) Create a vector which is having characters and numeric both vector is : a,n,hello,c45,Goodmorning,B23,7 
# if possible and also find its type weather It is of numeric type, character type, integer type double type?

vector <- c("a", "n", "hello", "c45", "Goodmorning", "B23", 7)
print(vector)
print(sapply(vector, class))

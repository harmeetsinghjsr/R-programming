vector <- c(1, 2, 3)
matrix <- matrix(1:9, nrow = 3, ncol = 3)
list2 <- list(a = 1, b = 2, c = 3)
my_list <- list(vector, matrix, list2)
print(my_list[3])
print(my_list$list)
print(my_list[["list"]])

list2 <- list(a = 1, b = 2, c = 3)
vector <- c(1, 2, 3)
matrix <- matrix(1:9, nrow = 3, ncol = 3)
my_list <- list(list2, vector, matrix)
print(my_list[1])
print(my_list[2])
print(my_list[3])


vector1 <- c(1, 2, 3)
vector2 <- c("A", "B" ,"C")
vector3 <- c(TRUE, FALSE, TRUE)
vector4 <- c(1+2i, 2+3i, 3+4i)
list1 <- list(vector1, vector2, vector3, vector4)
names(list1) <- c("numeric", "char", "logical", "complex")
list1
#2nd value of char
list1$vec1[2]
#add new index
list1$Gender <- c("M", "F", "M")
list1
#remove index
list1$Gender <- NULL
list1


list2 <- list(numeric=vector1, char=vector2, logical=vector3, complex=vector4, list_name=list1)
list2

#user defined list
a <- as.numeric(readline(prompt = "Enter an integer value = "))
b <- as.logical(readline(prompt = "Enter a logical value = "))
d <- as.complex(readline(prompt = "Enter a complex value = "))
c <- as.character(readline(prompt = "Enter a character value = "))
list <- list("Integer"=a, "Logical"=b, "Char"=c, "Complex"=d)
list
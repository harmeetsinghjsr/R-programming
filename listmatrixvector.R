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
list1$vector1


list2 <- list(numeric=vector1, char=vector2, logical=vector3, complex=vector4, list_name=list1)
list2

vector1 <- c(5,7,10,12,15)
vector1
vector2 <- c(22,25,27,29,30)
vector2

list1 <- list(vector1,vector2,"abc","def","ghi","lmn")
list1

list2 <- unlist(list1)
list2

matrix1 <- matrix(1:9, nrow = 3, ncol = 3)
matrix1
t(matrix1)
matrix2 <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = FALSE)
matrix2
print(matrix1,matrix2)
res<-matrix1+matrix2
res
sum(res);
colSums(res)
rowSums(res)
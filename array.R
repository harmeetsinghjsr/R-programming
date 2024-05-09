vec1<-c(1,3,5)
vec2<-c(10,11,12,13,14,15)
res<-array(c(vec1,vec2),dim=c(3,3,2))

#initializing names for rows, columns and matrices
rownames <- c("row1", "row2", "row3")
colnames <- c("col1", "col2", "col3")
matrix_n<-c("matrix 1","matrix2")

res<-array(c(vec1,vec2),dim=c(3,3,2),dimnames=list(rownames,colnames,matrix_n))
print(res)
print(res[1,2,1])

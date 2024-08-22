mm <- matrix(1:9,3, 3, FALSE)
colnames(mm) <- c("row1", "row2", "row3")
rownames(mm) <- c("col1", "col2", "col3")
print(mm)

row_names <- c("row1", "row2", "row3")
col_names <- c("col1", "col2", "col3")
rn <- matrix(1:9, 3, 3, TRUE, dimnames = list(row_names, col_names))
print(rn)


rn[1:2,1:2] <- 10
print(rn)

rn[,c(1,3)] <- 100
print(rn)

rn[1[2],3[1]] <- 2
print(rn)

#3d arrayarray1
array1 <- array(1:24, dim = c(3, 4, 2))
print(array1)
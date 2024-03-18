columnwise <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = FALSE)
print(columnwise)


rowwise <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2, byrow = TRUE)
print(rowwise)


#defining rows and column names
rownames(columnwise) <- c("row1", "row2", "row3")
colnames(columnwise) <- c("col1", "col2", "col3")
print(columnwise)

#defining range in matrix
print(columnwise[1:2, 1:2])

#defining range in matrix
print(columnwise[1:2, ])

#defining range in matrix   
print(columnwise[, 1:2])
#accessing elements by rows and columns
print(columnwise[1, 2])
print(columnwise[2, 3])

rn<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,byrow=TRUE, dimnames=list(row_names))
print(rn)

#defining columns and rows names
rownames(r) <- c("row1", "row2", "row3")
colnames(r) <- c("col1", "col2", "col3")
print(r)

#replacing elements equal to 5 
r[r==5] <- 0
print(r)


#add new row to a matrix
new_row <- c(10, 11, 12)    
r <- rbind(r, new_row)
print(r)

#add columns to a matrix
new_col <- c(13, 14, 15)
r <- cbind(r, new_col)
print(r)

#transpose using t() function
print(t(r))



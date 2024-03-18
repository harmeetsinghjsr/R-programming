# Creating a vector as input.  
data <- c("Shubham","Nishka","Arpita","Nishka","Shubham")  
factor_data<- factor(data)  
 
#Printing all elements of factor  
print(factor_data)  
  
#Change 4th element of factor with sumit  
factor_data[4] <-"Arpita"  
print(factor_data)  
  
#change 4th element of factor with "Gunjan"  
factor_data[4] <- "Gunjan"    # cannot assign values outside levels  
print(factor_data)  
 
#Adding the value to the level  
levels(factor_data) <- c(levels(factor_data),"Gunjan")#Adding new level  
factor_data[4] <- "Gunjan"  
print(factor_data)  



# Creating a vector as input.  
data <- c("Shubham","Nishka","Arpita","Nishka","Shubham","Sumit","Nishka","Shubham","Sumit","Arpita","Sumit")  
	  
# Applying the factor function.  
factor_data<- factor(data)  
	  
#Printing all elements of factor  
print(factor_data)  
  
#Accessing 4th element of factor  
print(factor_data[4])  
	  
#Accessing 5th and 7th element  
print(factor_data[c(5,7)])  
	  
#Accessing all elemcent except 4th one  
print(factor_data[-4])  
  
#Accessing elements using logical vector  
print(factor_data[c(TRUE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,TRUE)])

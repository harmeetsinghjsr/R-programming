# Creating the vectors for data frame.  
height <- c(132,162,152,166,139,147,122)  
weight <- c(40,49,48,40,67,52,53)  
gender <- c("male","male","female","female","male","female","male")  
	  
# Creating the data frame.  
input_data<- data.frame(height,weight,gender)  
print(input_data)
# Testing if the gender column is a factor.  
print(is.factor(input_data$gender))  
	  
# Printing the gender column to see the levels.  
print(input_data$gender)

a <- gl(3, 4, labels=c("CSE", "DS", "AI-ML"))
print(a)

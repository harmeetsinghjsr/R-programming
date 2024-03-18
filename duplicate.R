q<- c("a","B","c","D","e")
q[c(2,2,4,3)]

# Define a function to convert to uppercase
to_upper <- function(x) {
  return(toupper(x))
}

# Apply the function to the vector 'q'
q_upper <- sapply(q, to_upper)

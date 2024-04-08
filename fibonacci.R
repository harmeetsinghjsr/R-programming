fibonacci_seq <- function(start, end) {
  fib <- c(end)
  fib[1] <- start  
  a <- start
  b <- start + 1
  for (i in 2:end) {
    fib[i] <- b
    c <- b
    b <- a + b
    a <- c
  }
   return(fib)
}
fib_seq<- fibonacci_seq(7, 15)
cat("Fibonacci sequence starting from 7 for 15 elements:\n")
print(fib_seq)

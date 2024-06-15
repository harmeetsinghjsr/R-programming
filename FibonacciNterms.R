#fibonacci series till n
fibonacci <- function(n){
    a <- 0
    b <- 1
    for(i in 1:n){
        print(a)
        nth <- a + b
        a <- b
        b <- nth
    }
}
n <- as.integer(readline("Enter the value of n: "))
fibonacci(n)
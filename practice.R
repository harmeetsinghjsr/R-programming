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
fibonacci(15)

a<-c(1,3,5,7,9)
names(a)<-c("A","B","C","D","E")
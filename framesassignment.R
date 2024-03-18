
a <- data.frame(
  Num = c(1, 2, 3, 4, 5),
  Char = c("a", "b", "c", "d", "e"),
  TF = c(TRUE, FALSE, TRUE, FALSE, TRUE)
)
print(a)
a <- a[-3, ]
print(a)
a$Char <- NULL
print(a)


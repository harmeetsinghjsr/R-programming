
my_list <- list(
  name = "John Doe",
  age = 30,
  is_student = TRUE,
  grades = c(85, 90, 95),
  favorite_fruits = c("apple", "banana", "orange"),
  address = list(
    street = "123 Main St",
    city = "New York",
    country = "USA"
  )
)

print(my_list)




#accessing elements of a list
print(my_list$name) 
print(my_list$grades)

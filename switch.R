a<-switch(
    3,
    "a",
    "b",
    "c"
)
print(a)





ax=1
bx=2
y=switch(
    ax+bx,
    "a",
    "b",
    "c"
)
print(y)




y="18"
x=switch(
  y,
  "9"="A",
  "12"="B",
  "18"="C",
  "21"="D"
)
print(x)




x="2"
y="1"
a=switch(
    paste(x,y,sep=""),
    "8"="A",
    "10"="B",
    "18"="C",
    "21"="D"
)
print(a)





























# Define a simple switch case
simple_switch <- function(input) {
    switch(input,
                 "a" = print("You chose a"),
                 "b" = print("You chose b"),
                 "c" = print("You chose c"),
                 print("Unknown choice")
    )
}

# Test the function
simple_switch("a")
simple_switch("b")
simple_switch("c")
simple_switch("d")













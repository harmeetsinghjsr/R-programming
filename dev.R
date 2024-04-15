# defining the vector x with numbers of articles
x<-c(210,450,250,100,50,90)

#defining labels for each value in x
names(x)<-c("Algo","DS","java","C","C++","Python")

#output to be present as png file
png(file = "piechart.png")

# creating pie chart
pie(x, labels = names(x), col = "white",main = "Articles on GeekForGeeks", radius = -1, col.main="darkgreen")

# saving the file
dev.off()


set.seed(123)
data <- matrix(rnorm(100,0,10),nrow = 10,ncol = 10)
colnames(data) <- paste("col",1:10,sep = "")
rownames(data) <- paste("row",1:10,sep = "")
heatmap(data)
heatmap(data,Rowv = NA, Colv = NA)
my_colors <- colorRampPalette(c("blue","white","red"))(100)
heatmap(data,Rowv = NA, Colv = NA,col = my_colors)

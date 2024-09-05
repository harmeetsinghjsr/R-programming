# KNN is 
wcd<-read.csv(file.choose())
View(wcd)
str(wcd)

wcd<-wcd[-1]
View(wcd)
table(wcd$diagnosis)
prop.table(table(wcd$diagnosis))*100
round(prop.table(table(wcd$diagnosis))*100, digits = 1)

wcd$diagnosis<-factor(wcd$diagnosis, levels = c("B", "M"), labels = c("Benign", "Malignant"))
summary(wcd[c(1:5)])

norm<-function(wcd){
  return((wcd-min(wcd))/(max(wcd)-min(wcd)))
}



wcd_norm<-as.data.frame(lapply(wcd[2:31], norm))
summary(wcd_norm)
boxplot(wcd_norm)



set.seed(123)
# y<-sample(2,nrow(wcd),replace = T, prob = c(0.7,0.3))
# train<-wcd_norm[y==1,]
# test<-wcd_norm[y==2,]

#train and test sample

y<-sample(2,nrow(wcd),replace = T, prob = c(0.7,0.3))
train<-wcd_norm[y==1,]
test<-wcd_norm[y==2,]
View(train)
View(test)


k<-5
knn_pred<-knn(train=train,test=test,cl=wcd$diagnosis[y==1],k=k)
table(knn_pred,test$diagnosis)


library(class)
knn_pred<-knn(train=train,test=test,cl=x[y==1,1],k=5.00654)








# Load necessary library
library(class)

# Example data
train_data <- data.frame(
  feature1 = c(1, 2, 3, 4, 5),
  feature2 = c(5, 4, 3, 2, 1),
  label = c('A', 'A', 'B', 'B', 'B')
)

test_data <- data.frame(
  feature1 = c(1.5, 3.5),
  feature2 = c(4.5, 2.5)
)

# Define the training labels
train_labels <- train_data$label

# Remove labels from training data
train_data <- train_data[, -3]

# Apply KNN
k <- 3
predictions <- knn(train = train_data, test = test_data, cl = train_labels, k = k)

# View predictions
print(predictions)
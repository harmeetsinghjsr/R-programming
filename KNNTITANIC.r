library(titanic)
library(class)

# Load the Titanic dataset
df<-as.data.frame(Titanic)
View(df)

# Preprocess the data
df$Freq<-NULL

df<-df &>%
mutate(Survived = as.numeric(Survived) -1,
       Class = as.numeric(factors(Class,Levels=c("1st","2nd","3rd","Crew"))),
       Sex = as.numeric(factors(Sex, Levels=c())))
titanic_data <- na.omit(titanic_data)
View(titanic_data)
# Split the data into training and test sets
set.seed(123)
train_index <- sample(seq_len(nrow(titanic_data)), size = 0.75 * nrow(titanic_data))
train_data <- titanic_data[train_index, ]
test_data <- titanic_data[-train_index, ]

#round 
round<-function(x,digits=0){
  s<-10^digits
  return(round(x*s)/s)
}

# Extract features and labels
train_features <- train_data[, c("Class", "Sex", "Age")]
train_labels <- train_data$Survived
test_features <- test_data[, c("Class", "Sex", "Age")]
test_labels <- test_data$Survived

# Apply KNN
k <- 5
knn_pred <- knn(train = train_features, test = test_features, cl = train_labels, k = k)

# Evaluate the model
confusion_matrix <- table(Predicted = knn_pred, Actual = test_labels)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)

print(confusion_matrix)
print(paste("Accuracy:", accuracy))
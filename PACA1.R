titanic<-read.csv(file.choose())
View(titanic)
str(titanic)
#Q1

#1.	Using sqldf How many male and female passengers survived?
library(sqldf)
survived<-sqldf("Select * from titanic where Survived=1")
View(survived)

#male survivors
malesurvived<-sqldf("Select * from survived where sex='male'")
View(malesurvived)

#female survivors
femalesurvived<-sqldf("Select * from survived where sex='female'")
View(femalesurvived)


#2.	Who paid the highest fare among passengers who survived?
maxfare<-sqldf("Select * from survived where Fare=(Select max(Fare) from survived)")
View(maxfare)


#3.	What is the survival rate for each class (Pclass)?
rateofsurvival<-sqldf("Select Pclass, count (*) as count from survived group by Pclass")
View(rateofsurvival)




#Q2
#a How would you filter the dataset to only include passengers with non-missing values in both the Age and Fare columns
nonmissing<-sqldf("Select * from titanic where Age is not null and Fare is not null")
View(nonmissing)


#b How would you convert the Pclass column to a factor with levels First, Second, and Third?
titanic$Pclass<-factor(titanic$Pclass, levels=c(1,2,3), labels=c("First", "Second", "Third"))
View(titanic)


#c How would you identify and count the number of missing values in the Cabin column?

#first_try
valuesmissing<-sqldf("Select count (*) from titanic where Cabin = ''")
View(valuesmissing)

#second_try
valuesmissing<-sqldf("Select count (*) from titanic where Cabin = null")
View(valuesmissing)




#Q3
dataset<-read.csv(file.choose())
View(dataset)
str(dataset)

# You are a cybersecurity expert. The company wants to create ML based model to predict that class is anomaly or normal, Apply KNN.

#1.	Load the dataset and check the structure of the dataset
dataset<-dataset[-1]
View(dataset)
table(dataset$diagnosis)
prop.table(table(dataset$diagnosis))*100 
round(prop.table(table(dataset$diagnosis))*100, digits = 1)


#2.	Preprocess the dataset
dataset$diagnosis<-factor(dataset$diagnosis, levels=c("B", "M"), labels=c("Benign", "Malignant"))
summary(dataset[c(1:5)])

#3.	Apply KNN algorithm to predict the class
norm<-function(dataset){
  return((dataset-min(dataset))/(max(dataset)-min(dataset)))
}

# Normalize the dataset
dataset_norm <- as.data.frame(lapply(dataset[2:5], norm))
summary(dataset_norm)

# Split the dataset into training and testing sets
set.seed(123)
y <- sample(2, nrow(dataset), replace = TRUE, prob = c(0.7, 0.3))
train <- dataset_norm[y == 1, ]
test <- dataset_norm[y == 2, ]
View(train)
View(test)




#using class knn
library(class)
k <- 5
knn_pred <- knn(train = train, test = test, cl = dataset$diagnosis[y == 1], k = k)

# Evaluate the model
confusion_matrix <- table(knn_pred, test$diagnosis)
print(confusion_matrix)

# Calculate the accuracy
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(paste("Accuracy:", round(accuracy * 100, 2), "%"))


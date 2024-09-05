# # iris dataset in da
# da<-iris
# #applying knn in iris dataset
# # Splitting the dataset into training and testing set
# set.seed(123)
# norm<-function(x){(x-min(x))/(max(x)-min(x))}
# da_norm<-as.data.frame(lapply(da[1:4],norm))
# View(da_norm)
# boxplot(da_norm)

# y<-sample(2,nrow(da),replace = T, prob = c(0.7,0.3))
# train<-da_norm[y==1,]
# test<-da_norm[y==2,]
# View(train)
# View(test)
# k<-sqrt<-(nrow(train))
# k
# # Applying KNN
# library(class)
# knn_pred<-knn(train=train,test=test,cl=da[y==1,5],k=106)

# accuracy<-sum(knn_pred==iris[2,5])/length(knn_pred)
# accuracy







#apply knn to iris dataset and check accuracy

# Load necessary library
library(class)

# Example data

# iris dataset in da

da<-iris
#applying knn in iris dataset
# Splitting the dataset into training and testing set

set.seed(123)
norm<-function(x){(x-min(x))/(max(x)-min(x))}
da_norm<-as.data.frame(lapply(da[1:4],norm))

View(da_norm)
boxplot(da_norm)

y<-sample(2,nrow(da),replace = T, prob = c(0.7,0.3))

train<-da_norm[y==1,]
test<-da_norm[y==2,]

View(train)
View(test)

k<-sqrt<-(nrow(train))
k

# Applying KNN
library(class)

knn_pred<-knn(train=train,test=test,cl=da[y==1,5],k=106)

accuracy<-sum(knn_pred==iris[2,5])/length(knn_pred)
accuracy

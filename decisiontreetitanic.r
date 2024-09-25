library(titanic)
library(class)

# Load the Titanic dataset
df<-as.data.frame(Titanic)
View(df)

# Preprocess the data
df$Freq<-NULL

df<-df %>%
  mutate(Survived = as.numeric(Survived) -1,
         Class = as.numeric(factor(Class,levels=c("1st","2nd","3rd","Crew")),
         Sex = as.numeric(factor(Sex, levels=c)),
            Age = as.numeric(Age)))
titanic_data <- na.omit(df)
View(titanic_data)

# Split the data into training and test sets
set.seed('h')
train_index <- sample(1:nrow[titanic_data]), size = 0.75 * nrow(titanic_data)
train_data <- titanic_data[train_index, ]
test_data <- titanic_data[-train_index, ]


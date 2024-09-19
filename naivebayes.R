
library(e1071)
library(caret)
df<- data.frame(
  Day = c('D1', 'D2', 'D3', 'D4', 'D5', 'D6', 'D7', 'D8', 'D9', 'D10', 'D11', 'D12', 'D13', 'D14'),
  Outlook = c('Sunny', 'Sunny', 'Overcast', 'Rain', 'Rain', 'Rain', 'Overcast', 'Sunny', 'Sunny', 'Rain', 'Sunny', 'Overcast', 'Overcast', 'Rain'),
  Temp = c('Hot', 'Hot', 'Hot', 'Mild', 'Cool', 'Cool', 'Cool', 'Mild', 'Cool', 'Mild', 'Mild', 'Mild', 'Hot', 'Mild'),
  Humidity = c('High', 'High', 'High', 'High', 'Normal', 'Normal', 'Normal', 'High', 'Normal', 'Normal', 'Normal', 'High', 'Normal', 'High'),
  Wind = c('Weak', 'Strong', 'Weak', 'Weak', 'Weak', 'Strong', 'Strong', 'Weak', 'Weak', 'Weak', 'Strong', 'Strong', 'Weak', 'Strong'),
  Play = c('No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No')
)
View(df)

# Splitting the dataset into the Training set and Test set
nrow(df)
set.seed('h')
train_index <- sample(1:nrow(df), 0.8*nrow(df))
train_data <- df[train_index,]
test_data <- df[-train_index,]

nvb <- naiveBayes(Play ~ outlook + temp + humidity + wind, data = train_data)

pred <- predict(nvb, test_data)

accuracy <- mean(pred == test_data$Play)
print(paste("Accuracy: ", round(accuracy,4)))

new_data <- data.frame(
    Outlook = "rain",
    Temp = "mild",
    Humidity = "low",
    Wind = "weak"
)
new_data[] <- lapply()
# Load NSL-KDD dataset
# Exploratory Data Analysis on NSL-KDD dataset
install.packages("corrplot")
library(dplyr)
library(caret)
library(tidyverse)
library(corrplot)

df <- read.csv(file.choose())
df <- df[1:2000, ]
View(df)

distinct_values <- lapply(df, function(x) unique(x))
View(distinct_values)

summary(df)
str(df)

colSums(is.na(df))
head(df)

numeric_cols <- sapply(df, is.numeric)
numeric_cols

zero_sd_cols <- sapply(df[, numeric_cols], function(x) sd(x) == 0)
print(names(zero_sd_cols)[zero_sd_cols])

data_cor <- df[, numeric_cols][, !sapply(df[, numeric_cols], function(x) sd(x) == 0)]

cor_matrix <- cor(data_cor)
print(cor_matrix)

corrplot(cor_matrix, method = "color", type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45, addCoef.col = "black", 
         number.cex = 0.7, tl.cex = 0.7)
#dataset 
df<-read.csv(file.choose())
df
#select columns glucose, bloodpressure, insulin, and bmi from dataset, order the result by bmi in ascending and insulin in descending order, and show the first 10 rows 
df1 <- df[order(df$BMI, -df$Insulin), c("Glucose", "BloodPressure", "Insulin", "BMI")]
df1 <- head(df1, 10)
df1

#select the columns glucose, bloodpressure, and insulin from the dataset where age starts with '50' 
df2 <- df[grepl("^50", df$Age), c("Glucose", "BloodPressure", "Insulin")]
df2

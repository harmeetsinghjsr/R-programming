library(tidyverse)
library(tidyr)
n = 10
tidy_dataframe = data.frame(
    S_No = c(1:n),
    Group.1 = c(23,345,76,212,88,199,72,35,90,265),
    Group.2 = c(117,89,66,334,90,101,178,233,45,200),
    Group.3 = c(29,101,239,289,176,320,89,109,199,56)
)
tidy_dataframe
l<-tidy_dataframe %>%
    gather(key = "Group", value = "Value", -S_No)
    gather(key = "Group", value = "Frequency", Group.1:Group.3)



tidy_df<-read.csv(file.choose())

View(tidy_df)

gather(tidy_dataframe, key = "key", value = "value", -Date, -gasbill) %>% View("Date and Gasbill")

separate(tidy_dataframe, col = "Date", into = c("Day", "Month", "Year"), sep = "-") %>% View("Date separated into Day, Month and Year")

unite_data <- seperate(tidy_dataframe, col = "Date", into = "Date", sep = "-") %>% View("Date united into one column")
unite(Group,Allotment,NUMBER,SEP = "_") %>% View("Group and Allotment united into one column")
unite_data


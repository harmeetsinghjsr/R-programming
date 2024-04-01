# dplyr package
#load pckage
library(dplyr)
?dplyr
#### Verbs of Dplyr
# select() 	picks variables based on their names
# mutate() 	adds new variables that are functions of existing variables
# filter() 	picks cases based on their values
# summarise()	reduces multiple values down to a single summary
# arrange() 	changes the ordering of the rows 
# group_by() 	allows for group operations in the "split-apply-combine" concept
install.packages("dplyr")

# pipe %>%
library(datasets)
#load 
library(dplyr)
View(airquality)
air =airquality
str(air)
filter(air,Temp >70 & Month==6)
air=mutate(air, TEMPINC=(Temp-32)*5/9 )
help("airquality")
summarise(air,"Mean"=mean(Temp,na.rm = T))
summarise(group_by(air,Month),mean(Temp,na.rm=T))
View(arrange(air,Month,desc(Day)))
count(air,Day)
sample(0:150,250)

# iris dataset
df <- iris
View(iris)
str(iris)

df%>%select(Sepal.Length,Petal.Length,Species) %>%
  filter(Species == "setosa" & Petal.Length >1.4 & Sepal.Length >3.5)

df %>% filter(Species == "setosa" & Petal.Length >1.4 & Sepal.Length >3.5)%>%
  mutate(SL = Sepal.Width)%>%
  select(Sepal.Length,Petal.Length,Species,SL)


# summarise

df %>% filter(Species == "setosa" & Petal.Length >1.4 & Sepal.Width >3.5)%>%
  mutate(SL = Sepal.Width)%>%
  select(Sepal.Length,Petal.Length,Species,SL)%>%
  summarise(mean(Sepal.Length),max = max(SL))


# group_by
df %>% filter(Petal.Length >1.4 & Sepal.Width >1.5)%>%
  mutate(SL = Sepal.Width)%>%
  select(Sepal.Length,Petal.Length,Species,SL)%>%
  group_by(Species)%>%
  summarise(mean(Sepal.Length),max = max(SL))

#dataframe for employees

emp_df = data.frame(id=101:105,Name=c("John","Mohit","Sam","Dora","Manas"),
                    gender =c("M","M","M","F","M"),
                    Dept=c("IT","HR","IT","HR","Mgmnt"),
                    Salary =c(85000,70000,90000,65000,88000))

emp_df %>%group_by(Dept)%>%summarise(Avg_sal= mean(Salary)) 

emp_df %>% group_by(gender)%>%
  summarise(n_distinct(gender))
 

# count based on gender
emp_df %>% group_by(Dept)%>%
  summarise(Count_data=n())


# arrange
emp_df %>% select(id ,Dept, Salary) %>%group_by(Dept)%>%
  summarise(avg_salary=mean(Salary))%>%arrange(avg_salary)

            
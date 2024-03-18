library("sqldf")
students<-read.csv(file.choose())
View(students)
sqldf("select * from students")
sqldf("select count(*) from students")
sqldf("select * from students where marks>70")
sqldf("select * from students where marks<60")
sqldf("select * from students where name='Veer'")
sqldf("select DISTINCT Name students where")
min(students$marks)
max(students$marks)
sum(students$marks)
nrow(students)
ncol(students)
nrow(students[students$marks==33,])
nrow(students[students$marks>33,])
sqldf("select * from students where marks==12")
sqldf("select * from students where marks==33")











library("sqldf")
students<-read.csv(file.choose())
View(students)
sqldf("select * from students")
sqldf("select count(*) from students")
sqldf("select * from students where Roll.no.>15")
sqldf("select * from students where Roll.no.<6")
sqldf("select * from students where name='veer'")
sqldf("select DISTINCT Name students where")
min(students$X)
max(students$X)
sum(students$X)
nrow(students)
ncol(students)
nrow(students[students$age==32,])
nrow(students[students$marks>20,])
sqldf("select * from students where Name='jp'")



some queries more usin sqldf and data would be height city items etc
library("sqldf")
students<-read.csv(file.choose())
View(students)
sqldf("select * from students where height>5.5")
sqldf("select * from students where city='delhi'")
sqldf("select * from students where items>5")

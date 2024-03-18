library(base)
emp.data<-data.frame(
  employee_id=c(1:5),
  employee_name=c("A","B","C","D","E"),
  sal=c(623.3,423.5,465.5,546.6,856.6),
  starting_date=as.Date(c("2012-01-01","2013-09-23","2013-03-13","2015-01-16","2015-12-22")),
  stringsAsFactors = FALSE
)
str(emp.data)
#extracting specific column
final<-data.frame(emp.data$employee_id,emp.data$sal)
print(final) 
#extracting specific row
final<-emp.data[1,]
print(final)  
#extracting last two rows
final<-emp.data[4:5,]
#extracting specific columns and rows
final<-emp.data[c(2,3),c(1,4)]
print(final)
#adding rows
x<-list(6,"F",650.8,"2016-07-08")
rbind(emp.data,x)
#adding columns
y<-c("Moradabad","Lucknow","Delhi","Etawah","Agra")
cbind(emp.data,Address=y)
emp.data

#delete rows 
emp.data<-emp.data[-1,]
print(emp.data)

#delete col
emp.data$starting_date<-NULL
print(emp.data)

#printing summary
print(summary(emp.data))
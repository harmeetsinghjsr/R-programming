library(sqldf)
library(readxl)
cm<-read_xls(file.choose())
View(cm)
str(cm)

cityh<-sqldf("select * from cm where City like 'h%' or City like 'H%'")
# city
View(cityh)

citya<-sqldf("select * from cm where City like '%a' or City like '%A'")
View(citya)

cityx<-sqldf("select * from cm where City like '%x%' or City like '%X%'")
View(cityx)

#where shipmode = standard class
shipmode<-sqldf("select * from cm where [ship mode] = 'Standard Class'")

s<-sqldf("select sum(Sales) as [Total Sales] from cm")
View(s)

sregion<-sqldf("select Region, sum(Sales) as [Sales] from cm group by Region")
View (sregion)

maxprofit<-sql("select * from cm where Profit = (select(max(Profit)) from sample)")
View(maxprofit)

# arrange in terms of sum of profit
sumprofit<- sqldf("select Segment, sum(Sales) as [Total Profit] from cm group by Segment order by [Total Profit] desc")
View(sumprofit)

#sum of sales where regions are central and west
sumcewe<- sqldf("select Region, sum(Sales) from cm group by Region having Region='Central' or Region ='West'")
View(sumcewe)

# cities where pfofit is minimum
minprofit<-sqldf("select City, Profit from cm where Profit = (select(min(Profit)) from cm)")
View(minprofit)

# regionwise profit where sum of profit is >0
profitregion<-sqldf("select Region, sum(Profit) from cm group by Region having sum(Profit)>0")
View(profitregion)

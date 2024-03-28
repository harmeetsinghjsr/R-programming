deploy in read.table('filename', header = TRUE,  sep = '	',  stringsAsFactors = FALSE)
library(dplyr)
?dplyr


iris
View(iris)
str(cars)
View(cars)
str(airquality)
View(airquality)
str(freeny)
View(freeny)

df<-iris
df%>select(Sepal.Length, Sepal.Width, Species) %>% filter(Species == 'setosa' & Petal.Length> 1.4 & Sepal.Length>3.5) %>% head(5)

str(LifeCycleSavings)
str(mpg)
str(mtcars)
str(ToothGrowth)
str(USArrests)
str(ChickWeight)

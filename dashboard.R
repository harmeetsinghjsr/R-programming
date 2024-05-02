---
title: "Peer Review Three"
output: 
  flexdashboard::flex_dashboard:
    orientation: columns
    vertical_layout: fill
---

```{r setup, include=FALSE}
library(flexdashboard)
```


# Page 1 
Column {data-width=650}
-----------------------------------------------------------------------

### Chart A

```{r}
library(dplyr)
library(tidyverse)

library(ggplot2)

df <- read.csv("data.C:\Users\hs978\CodeSpace\R-programming\data.csv")
#view(df)

df1 <- subset(df, select = c("year","dem","all_pass"))


#str(df1)


df1$dem <- as.character(df1$dem)

df1$dem = factor(df1$dem, levels = c(0,1),
                             labels = c("Democrat","Republic"))



#view(df2)

#colnames(df2)<-c("Year","Party","All Bills Passed")

df2 <-df1 %>% group_by(year,dem) %>% summarise_at(vars(all_pass),funs(sum(. , na.rm = TRUE)))

#df2 <-df1 %>% group_by(year,dem ) %>%  summarise_at(vars(all_pass),funs(sum(. , na.rm = TRUE)))

ggplot(df2, aes(x=year, fill = dem )) +  geom_area(aes(y = all_pass))+labs(y = "All Bills Passed", x = "Year", title = "Number of bills passed since 1980")
  






```



# Page 2
Column {data-width=500}
-----------------------------------------------------------------------

### Chart B

```{r}

library(dplyr)
library(tidyverse)
library(broom)

library(ggplot2)
library(plotly)

#install.packages("jtools")
library(jtools)


df <- read.csv("data.csv")


df <- filter(df, df$congress==110)

#view(df)
df3 <- subset(df, select = c(dem, all_pass,votepct))


#view(df3)


#df3 <- filter(df3, dem ==0 & dem ==1)

#view(df3)

df3$dem <- as.character(df3$dem)

df3$dem = factor(df3$dem, levels = c(0,1),
                             labels = c("Democrat","Republic"))


#view(df3)

fit<- lm(formula = votepct~dem,df3)

ggplot(df3, aes(x=votepct, fill = dem,colour = dem )) +  geom_point(aes(y = all_pass),size=3)+labs(y = "All Pass", x = "votepct", title = "Passage and Vote Pct , 110th Congress")





#df4 <-df3 %>% group_by(dem) %>% summarise_at(vars(all_pass),funs(sum(. , na.rm = TRUE)))


#view(df4)



#abline(fit)
#effect_plot(fit, pred = "dem",interval = TRUE, plot.points = TRUE)
#(fit, pred = votepct, interval = TRUE, plot.points = TRUE)

```


Column {data-width=500}
-----------------------------------------------------------------------

### Chart C

```{r}


library(dplyr)
library(tidyverse)
library(broom)

library(ggplot2)
library(plotly)

#install.packages("jtools")
library(jtools)


df <- read.csv("data.csv")


df <- filter(df, df$congress==110)

view(df)
df5 <- subset(df, select = c(dem, all_pass,dwnom1))


view(df5)


#df3 <- filter(df3, dem ==0 & dem ==1)

#view(df3)

df5$dem <- as.character(df5$dem)

df5$dem = factor(df5$dem, levels = c(0,1),
                             labels = c("Democrat","Republic"))


view(df5)

fit<- lm(formula = all_pass~dwnom1,df5)

ggplot(df5, aes(x=dwnom1, fill = dem,colour = dem )) +  geom_point(aes(y = all_pass),size=3)+labs(y = "All Pass", x = "DW Nominate", title = "Passage and Ideology , 110th Congress")




```



# Page 3

Column{data-width=150}
-----------------------------------------------------------------------

### Chart D
 
 
 
#### Table
```{r}

library(tidyr)
#install.packages('huxtable')

library(huxtable)
#df
#matrix(unique(df$st_name),8,7)



#tab <- table(df$st_name)

data_table  <- matrix(unique(df$st_name),9,6)
as_hux(data_table) %>%  set_outer_borders(0.4)  %>% map_background_color(by_rows("grey95", "white")) 
      

```



Column {data-width=550}
-----------------------------------------------------------------------

```{r}


library(dplyr)
library(tidyverse)
library(broom)

library(ggplot2)
library(plotly)

#install.packages("jtools")
library(jtools)

#colnames(df)

df <- read.csv("data.csv")


df <- filter(df, df$congress==110)

#view(df)
df6 <- subset(df, select = c(all_pass,st_name))


df7 <-df6 %>% group_by(st_name) %>% summarise_at(vars(all_pass),funs(sum(. , na.rm = TRUE)))



#View(df7)




#df3 <- filter(df3, dem ==0 & dem ==1)

#view(df3)

#df5$dem <- as.character(df5$dem)

#df5$dem = factor(df5$dem, levels = c(0,1),
 #                            labels = c("Democrat","Republic"))


#view(df5)

#fit<- lm(formula = all_pass~dwnom1,df5)


p <- ggplot(df, aes(x = st_name, y = all_pass),bin=30)+  geom_col( width = 0.95)+coord_flip()+labs(y = "State Name", x = "Total Bills Passed Per State", title = "Total bills passed by state delegation , 110th Congress")
  
p

#ggplot(df7, aes(x=st_name)) + geom_bar(orientation = horizontal)+labs(y = "All Pass", x = "DW Nominate", title = "Passage and Ideology , 110th Congress")



```

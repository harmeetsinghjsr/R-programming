---
title: "R DASHBOARD"
output: 
  flexdashboard::flex_dashboard:
   
    orientation: row
    vertical_layout: fill
    social: ["twitter", "facebook", "menu"]
    
---

```{r setup, include=FALSE}
library(flexdashboard)
library(knitr)
library(DT)
library(ggplot2)
library(plotly)
library(dplyr)
library(openintro)
library(highcharter)
library(ggvis)
```

```{r}
data <- read.csv("~/Desktop/vehicle.csv")
```

```{r}
mycolors<- c("blue", "#FFC125", "darkgreen", "darkorange")
```

DATA VISUALIZATION
=============================
Row
-------------------------------


### CAR Failure Analysis
```{r}
valueBox(paste("Failure"),
         color = "warning")
```
### Car failure in us
```{r}
valueBox(length(data$State),
         icon = "fa-user")
```
### **labor cost**

```{r}
gauge(round(mean(data$lc),
      digit =2),
      min= 0, 
      max = 350,
      gaugeSectors(success = c(0, 150),
                   warning = c(150, 240),
                   danger = c(240, 350),
                   colors = c("green",                                      "yellow", "red")))
```

### Massachusetts
```{r}
valueBox(sum(data$State== "MA"),
         icon = 'fa-building')
```

### California
```{r}
valueBox(sum(data$State== "CA"),
         icon = 'fa-building')
```

### Texas
```{r}
valueBox(sum(data$State== "TX"),
         icon = 'fa-building')
```

### Florida
```{r}
valueBox(sum(data$State== "FL"),
         icon = 'fa-building')
```
Row
--------------------------------


### failures by state
```{r}
p1<- data %>%
         group_by(State) %>%
         summarise(count = n()) %>%
         plot_ly (x = ~State,
                 y = ~count,
                 color = rainbow(51), 
                 type = 'bar') %>%
                 layout(xaxis = list(title = "failures by state"),
                 yaxis= list(title= 'Count'))
                 p1
                 
```

### top states

```{r}
p2<- data %>%
       group_by(State) %>%
       summarise(count= n()) %>%
       filter(count>50) %>%
       plot_ly(labels = ~State,
               values = ~count,
               marker = list(color=                                          mycolors)) %>%
        add_pie(hole =0.2) %>%
        layout(xaxis = list(zeroline = F,
                            showline = F,
                            showticklabels =F,
                            showgrid=F),
               yaxis = list(zeroline=F,
                            showline = F,
                            showticklabels =F,
                            showgrid=F))
p2
```
       
### FM vs Mileage
```{r}
p3 <- plot_ly(data,
            x= ~fm,
            y= ~Mileage,
            text= paste("FM:", data$fm,
                        "Mileage:", data$Mileage),
            type = "bar") %>%
  layout(xaxis=list(title="FM"),
         yaxis= list(title="Failure Mileage"))
         p3

```


### Scatter Plot of Month Vs Mileage

```{r}

p4 <- plot_ly(data, x=~fm) %>%
add_markers (y = ~Mileage,
text= ~paste("Mileage: ", Mileage), 
                 showlegend = F) %>%
add_lines(y = ~fitted(loess(Mileage ~ fm)),
name = "Loess Smoother",
color = I("#FFC125"), 
showlegend = T,
line= list(width=5)) %>% 

layout(xaxis = list(title ="Month"), 
      yaxis = list(title ="Mileage"))
p4
```

### Box plot
```{r}
data %>%
         group_by(State) %>%
         ggvis(~State, ~lc, fill = ~State) %>%
         layer_boxplots()
```

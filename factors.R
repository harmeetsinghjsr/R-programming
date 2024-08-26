data<-c("Shubham","Rahul","Shubham","Rahul","Shubham","Rahul")
print(data)
print(is.factor(data))

fdata<-factor(data)
print(fdata)
print(is.factor(fdata))
#replace the level
print(levels(fdata))

#labels in r
print(levels(fdata))
#factor levels
print(nlevels(fdata$levels))

#changing the labels
levels(fdata)<-c("Shubham","Rahul")
print(levels(fdata))   
print(fdata)

a<-c("n","s")
z<-is.factor(a)
z

z<-factor(c("North","East"))
d<-is.factor(z)
d
r<-factor((z),labels=c("d","x"))
r
c(1,2,3)
c("a","b","c")

Genders <- factor(c("M", "F", "T"),levels=c("M", "F","ABC"))
#replace T with ABC
Genders
Genders[Genders["T"]] <- "ABC"
Genders
#save variable names in r
save("Genders",file="hfile.RData")
getwd()
x<-load("hfile.RData")


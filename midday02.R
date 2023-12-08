wiki <- read.csv("C:/Users/liami/Desktop/wikimid - Sheet1.csv")
mydata <- read.csv("C:/Users/liami/Desktop/england - Sheet1.csv")

mydata$Relative <- (((mydata$X2021-mydata$X1981)/mydata$X1981)*100)
min(mydata$Relative)
mydata[mydata$Relative<1.55,]$Name
max(mydata$Relative)
mydata[mydata$Relative>114.4,]$Name

mydata$Absolute <- mydata$X2021-mydata$X1981
min(mydata$Absolute)
mydata[mydata$Absolute==2175,]$Name
max(mydata$Absolute)
mydata[mydata$Absolute==165606,]$Name

mergeddata <- merge(mydata, wiki, by.x = "Name", by.y= "Name")
cor.test(mergeddata$Relative, mergeddata$Density..per.km2)
library(ggplot2)
library(readr)
library(dplyr)

ggplot(mergeddata, aes(displ, hwy, colour = class)) + 
  geom_point()



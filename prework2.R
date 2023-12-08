unemp <- read.csv("C:/Users/liami/Desktop/02-states-unemployment - Sheet1.csv")
barplot(unemp$unemp, xlab = "States", ylab = "Unemployment Percentage", main = "Unemployment rate of each state", names.arg = names, las = 2, cex.names = .5)
statecod <- read.csv("C:/Users/liami/Desktop/02-census-regions-divisions - census-regions.csv")
mydata <- merge(unemp, statecod)
mydata
mean(mydata$unemp[mydata$Region=="South"])
mean(mydata$unemp[mydata$Region=="Midwest"])
t.test(mydata$unemp[mydata$Region=="South"], mydata$unemp[mydata$Region=="Midwest"])


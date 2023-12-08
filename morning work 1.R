mydata <- read.csv("http://rfs.kvasaheim.com/data/crime2020.csv")

plot(mydata$pcrime[mydata$year==1990], mydata$vcrime[mydata$year==2000], pch = 20, xlab="Property Crime in 1990", ylab="Violent Crime in 2000", main="Property crime in 1990 over Violent crime in 2000")


mylm<-lm(mydata$vcrime[mydata$year==2000]~mydata$pcrime[mydata$year==1990])
summary(mylm)



plot(
	mydata$pcrime[mydata$year==1990], 
	mydata$vcrime[mydata$year==2000], 

	pch = 20, xlab="Property Crime in 1990", ylab="Violent Crime in 2000", main="Property crime in 1990 over Violent crime in 2000")

identify(
	mydata$pcrime[mydata$year==1990], 
	mydata$vcrime[mydata$year==2000], 
	mydata$state[mydata$year==2000],
	n=1
	)
mydata2 <- subset(mydata, state!="District of Columbia")
plot(mydata2$pcrime[mydata2$year==1990], mydata2$vcrime[mydata2$year==2000], pch = 20, xlab="Property Crime in 1990", ylab="Violent Crime in 2000", col="#3c3b6e")
abline(lm(mydata2$vcrime[mydata2$year==2000]~ mydata2$pcrime[mydata2$year==1990]), col = "#355e3b")
summary(lm(mydata2$vcrime[mydata2$year==2000]~ mydata2$pcrime[mydata2$year==1990]))

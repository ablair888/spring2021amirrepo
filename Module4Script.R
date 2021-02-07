install.packages("ggplot2")
library("ggplot2")

hospData <- read.csv("Module4Data.csv")
attach(hospData)

par(mfrow=c(1,2))
boxplot(hospData$Freq, main="Boxplot of Frequency", xlab="Frequency", ylab="Number of Occurences")
hist(hospData$Freq, main="Histogram of Frequency", xlab="Frequency", ylab="Number of Occurences")

par(mfrow=c(1,2))
boxplot(hospData$bloodp, main="Boxplot of Blood Pressure", xlab="Blood Pressure", ylab="Number of Individuals")
hist(hospData$bloodp, main="Histogram of Blood Pressure", xlab="Blood Pressure", ylab="Number of Individuals")

par(mfrow=c(1,2))
boxplot(hospData$first, main="Boxplot of General Doctor's Opinion", xlab="Good(0) v. Bad(1)", ylab="Number of Individuals")
hist(hospData$first, main="Histogram of General Doctor's Opinion", xlab="Good(0) v. Bad(1)", ylab="Number of Individuals")

par(mfrow=c(1,2))
boxplot(hospData$second, main="Boxplot of External Doctor's Opinion", xlab="Low(0) v. High(1)", ylab="Number of Individuals")
hist(hospData$second, main="Boxplot of External Doctor's Opinion", xlab="Low(0) v. High(1)", ylab="Number of Individuals")

par(mfrow=c(1,2))
boxplot(hospData$finaldecision, main="Boxplot of Head of EU's Decision", xlab="Low(0) v. High(1)", ylab="Number of Individuals")
hist(hospData$finaldecision, main="Boxplot of Head of EU's Decision", xlab="Low(0) v. High(1)", ylab="Number of Individuals")

ggplot(hospData, aes(x=bloodp, y=finaldecision, col=Freq)) + geom_point() + labs(x = "Blood Pressure", y = "Head of EU's Decision (Low v High)", color = "Frequency of Visit")

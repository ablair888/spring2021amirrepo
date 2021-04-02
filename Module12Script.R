#install.packages("ggplot2") #install proper packages
#install.packages("lattice")

library(lattice) # load the packages
library(ggplot2)

marriage_data <- read.csv("Affairs.csv") #read .csv file into variable
marriage_data

View(marriage_data) #check the data
nrow(marriage_data)
ncol(marriage_data)
colnames(marriage_data)
str(marriage_data)

edDescrpt <- character() #because we will be using education as a grouping metric, we first need to take the wide range of numbers and turn them into meaningful categories
edDescrpt[marriage_data$education < 12] <- "Grade School" #any education less than 12th grade 
edDescrpt[marriage_data$education < 16 & marriage_data$education > 12] <- "Undergraduate" #any edudation between undergraduate
edDescrpt[marriage_data$education < 99 & marriage_data$education > 16] <- "Post-Graduate" #any education post-undergraduate

plot(x = marriage_data$yearsmarried, y = marriage_data$affairs, xlab = "Years Married", ylab = "Number of Affairs") #basic R scatterplot

xyplot(yearsmarried ~ affairs, #xy scatterplot using the Lattice package, allows for a little more visualization
       data = marriage_data,
       group = edDescrpt,
       auto.key = TRUE,
       xlab = "Years Married",
       ylab = "Number of Affairs",
       main = "Years of Marriage vs Number of Affairs Groups by Education")

ggplot(data = marriage_data, aes(x = yearsmarried, y = affairs)) + #xy scatterplot using GGPlot, my personal favorite
  geom_point(aes(shape = gender, color = edDescrpt)) +
  labs(title = "Years of Marriage vs Number of Affairs Groups by Education", x = "Years Married", y = " Number of Affairs")
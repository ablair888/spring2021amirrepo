install.packages("ISLR")
install.packages("dplyr")
install.packages("plyr")
install.packages("pryr")
install.packages("tidyverse")

library(dplyr)
library(plyr)
library(pryr)
library(tidyverse)
library(boot)
library(data.table)
library(ISLR)

stuassign6 <- read.table(file.choose(), header=TRUE, sep=",")
stuassign6

StuAverage <- ddply(stuassign6, "Sex", transform, Grade.Average=mean(Grade))

write.table(StuAverage, "Students_Gendered_Modue8Mean.csv", sep = ",")

newstuassign6 <- subset(stuassign6, grepl("[iI]",stuassign6$Name))

write.table(newstuassign6, "Subsetted_Module8Data.csv", sep=",")
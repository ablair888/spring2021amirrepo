install.packages("pryr")
install.packages("dpylr")
install.packages("datasets-package")

library(pryr)
library(dplyr)
library(datasets)

otype(airmiles) #displays OO system type such as S3 or S4

typeof(airmiles) #gives you the type of object an input is 
is.double(airmiles) #used to confirm

#a generic function is a function that can provide different outputs 
#determined by which input was given
#example includes str() 

str(airmiles)
str(beaver1)

#main difference between S3 and S4 is that S4 is more formal than S3
#Becasue S4 are more formal, they allow for specific callings of different (and multiple) inheritances and dispatch. 
#RC objects are mutable, while methods belong to classes, not functions.
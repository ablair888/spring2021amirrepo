#Creating Vectors
a <- c(1,2,3,4,5)

#Creating Matrices
A <- matrix(c(1,2,3,4,5,6), nrow=2)
A

#Inverses of Matrices
A <- matrix(c(1,2,3,4,5,6,7,8,9),3,3)
A
solve(A)

A <- matrix(c(2,5,7,8),2,2)
solve(A)

#Determinant of a Matrix
det(A)
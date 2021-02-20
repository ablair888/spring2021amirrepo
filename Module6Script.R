A <- matrix(c(2,0,1,3), ncol=2)
A

B <- matrix(c(5,2,4,-1), ncol=2)
B

A + B

A - B

C <- diag(c(3), nrow=5, ncol=5)
C[1,2:5] <- c(1,1,1,1)
C[2:5,1] <- c(2,2,2,2)
C

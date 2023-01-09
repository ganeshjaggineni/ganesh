#matrix operations
matrix=matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
print(matrix)

#using byrow
matrix=matrix(c(1,2,3,4,5,6),nrow=3,ncol=2,byrow=TRUE)
print(matrix)

#acessing elements using subscript
print(matrix[3,2])

#acessing entire row
print(matrix[2,])
print(matrix[3,])

#acessing columns
print(matrix[,1])
print(matrix[,2])

#acessing more than one row or col
print(matrix[c(1,3),])
#modifying element
matrix[1,2]=100
print(matrix)

#combining matrices
#using cbind() to combien cols
#using rbind() to comb rows
mat1<-matrix(c("cyber","web","data mining","ai"),nrow=2,ncol=2,byrow=TRUE)
print(mat1)
mat2<-matrix(c("sql","bruteforce","xss","dictionary attack"),nrow=2,ncol=2)
print(mat2)
#combing rows
print(rbind(mat1,mat2))
print(cbind(mat1,mat2))

#finding element
print("xss" %in% mat2)

#finding no.of rows
print(nrow(mat1))
#finding dimensions
print(ndim(mat2))

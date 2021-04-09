## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Initiate the inverse property 
  n <- NULL
  
  ## A method to set the matrix m
  set <- function(matrix){
    m <<- matrix
    n <<- NULL
  }
  
  ## A methode to get the matrix m
  get <- function(){
    ## Return the matrix 
    m
  }
  
  ## Now, the method to set the inverse of a given matrix
  setInverse <- function(inverse) {
    ## Inverse matrix
    n <<- inverse
  }
  
  ## Here is the method to get the inverse of the given matrix
  getInverse <- function(){
    ## Just the return the inverse property
    n 
  }
  
  ## Return a list of all the methods
}


## Write a short comment describing this function

## By computing the inverse of the special matrix , i can surely 
## return the makeCacheMatrix. Then i can check the inverse property. If
## it has been calculated, then the cacheSolve should retrieve the inverse
## from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  ## Return the inverse m if it is set
  if(!is.null(m)){
    return(m)
  }
  
  ## Getting the matrix
  data <- x$get()
  
  ## Now i can calculate the inverse using matrix multiplication
  m <- solve(data)%*% data
  
  ## Now i can set the inverse
  x$setInverse(m)
  
  ## Finally i can return the matrix
  m
}

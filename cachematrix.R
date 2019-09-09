## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(aMatrix = matrix()) {
  invMatrix <- NULL
  set <- function(y) {
    aMatrix <<- y
    invMatrix <<- NULL
  }
  get <- function() aMatrix 
  getInverse <- function() invMatrix
  setInverse <- function() {
    invMatrix <<- solve(m <<- aMatrix)
  }

  list(set = set, get = get, 
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

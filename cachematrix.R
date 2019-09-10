## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(aMatrix = matrix()) {
  iMatrix <- NULL
  set <- function(y) {
    x <<- y
    iMatrix <<- NULL
  }
  get <- function() x
  getInverse <- function() {
    x <- iMatrix
    x
  }
  setInverse <- function(y) {
    iMatrix <<- y
  }
  list(set=set, get=get, getInverse=getInverse, setInverse=setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("using cached value")
    return (inv)
  }
  mData <- x$get()
  inv <- solve(mData)
  x$setInverse(inv)
  inv
}

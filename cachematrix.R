## The function makeCacheMatrix is used to created a matrix that has the abbility to save his inverse.
## When created this kind of matrix by this function you can use the following functions:
## set:        defines the matrix
## get:        returns the matrix
## setinverse: saves the input as inverse matrix
## getinverse: returns the inverse that is saved

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(y) inv <<- y
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
        


## This function can be used to get the inverse of a matrix created by the 'makeCacheMatrix'.
## When the matrix has already a cached inverse it will show this inversed matrix.
## If it doesn't has an casched inversed matrix it will calculate the inverse matrix, show this and safe it to the cache as well.

cacheSolve <- function(x, ...) {
  tr <- x$getinverse()
  if(!is.null(tr)) {
    message("getting cached data")
    return(tr)
  }
  data <- x$get()
  tr <- solve(data, ...)
  x$setinverse(tr)
  tr
}


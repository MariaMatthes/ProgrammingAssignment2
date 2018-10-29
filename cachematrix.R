## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
        


## Write a short comment describing this function

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


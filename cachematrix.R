## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# function to take a matrix
makeCacheMatrix <- function(x = matrix()) {
  # set empty cache
  i <- NULL
  set <-function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- fucntion() i
  
  # this list allows CacheSolve to access the cache of 'makeCacheMatrix'
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

#This function is written to find the inverse of a matrix and return it
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  # if i is not null, return i
  if(!is.null(i)) {
    message("getting cache data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat, ...)
  x$setInverse(i)
  i
        
}

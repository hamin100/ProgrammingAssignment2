## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Created a 'makeCacheMatrix' function:
##first it will set the value of the matrix
##second it will get the value of the matrix
##third it will set the value of the inverse matrix
##fourth it will get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) i <<- inv
  getinverse <- function() i
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )

}


## Write a short comment describing this function

##This "cacheSolve" function calculate the inverse of the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  #if a cached value exists return it
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  m <- x$get()
  i <- solve(m, ...)
  x$setinverse(i)
  #returning inverse
  i
}

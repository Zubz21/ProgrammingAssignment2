## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  sol <- NULL
  set <- function(y){
    x<<-y
    sol <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) sol <<- solve
  getsolve <- function() sol
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x
  sol <- x$getsolve()
  if(!is.null(sol)) {
    message("Matrix that is the inverse of x")
    return(sol)
  }
  mydata <- x$get()
  sol <- solve(mydata, ...)
  x$setsolve(sol)
  sol
}

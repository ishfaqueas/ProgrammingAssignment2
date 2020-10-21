## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Overall 'makeCacheMatrix' is a new function which contain fouur other functions called 'set, get, setsolve, getsolve' 
makeCacheMatrix <- function(x = matrix()) {
  s<- NULL
  set <- function(y){
      x<<-y
      s<<-NULL
  }
  get<- function()x
  setsolve <- function(solve) s<<-solve
  getsolve<- function() s
  list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("Getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
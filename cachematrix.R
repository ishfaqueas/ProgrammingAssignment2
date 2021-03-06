## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Overall 'makeCacheMatrix' is a new function which contain fouur other functions called 'set, get, setsolve, getsolve' 
makeCacheMatrix <- function(x = matrix(sample(1:50,9),3,3)) {
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
## Tis function called "cacheSolv" will give inverse of above matrix if it is present in cache
## otherwise it will calculate the inverse of matrix and will give results
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
## I have set the input variable matrix as x and changed the cache matrix variable as ma

## I have used the same functions in the sample and changed the mean to solve and set and get variables to setsolve and getsolve

makeCacheMatrix <- function(x = matrix()) {
ma <- Null
set <- function(y){
    x <<- y
    ma <<- NULL
}
get <- function()x
setsolve <- function (mat) ma <<- solve
getsolve <- function() ma
list(set = set, get = get,
     setsolve = setsolve,
     getsolve = getsolve)
}


## Used the same structure, changed the variables according the first functions

cacheSolve <- function(x, ...) {
   ma <-x$getsolve()
   if(!is.null(ma)){
        message("getting inversed matric")
        return(ma)
   }
  data <- x$get()
  ma <- solve(data, ...)
  x$setsolve(ma)
  ma
}

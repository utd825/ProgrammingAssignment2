## I have set the input variable matrix as x and changed the cache matrix variable as ma

## I have used the same functions in the sample and changed the set and get variables to setmat and getmat

makeCacheMatrix <- function(x = matrix()) {
ma <- Null
set <- function(y){
    x <<- y
    ma <<- NULL
}
get <- function()x
setmat <- function (mat) ma <<- mat
getmat <- function() ma
list(set = set, get = get,
     setmat = setmat,
     getmat = getmat)
}


## Used the same structure, changed the variables according the first functions

cacheSolve <- function(x, ...) {
   ma <-x$getmat()
   if(!is.null(ma)){
        message("getting inversed matric")
        return(ma)
   }
  data <- x$get()
  ma <- mat(data, ...)
  x$setmat(ma)
  ma
}

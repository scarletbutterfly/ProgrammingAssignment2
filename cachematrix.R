## This is the 2 assignment from the R programming course on coursera. 
## Here, I created 2 functions: the first, makeCacheMatrix , creates a special matriz that can cache its inverse, and, the second function, cacheSolve, computes the inverse 
## of the first function or retrieves it directly from cache



makeCacheMatrix <- function(x = matrix()) {
        i <- NULL # i stands for inverse
        set <- function(y){
          x <<- y #<<- assign a value to an object in an envirnment != current enviro. 
          i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
        
## This function creates a special matrix that can cache the inverse of a matrix
}
        


cacheSolve <- function(x, ...) {
  i <- x$getmean()
  
  if(!is.null(i)){ # if the inverse was already calculated, it gets result from the cache
    message("getting cached data")
    return(i)
  }
 
  data <- x$get()
  i <- mean(data, ...)
  x$setmean(i)
  i
## Return a matrix that is the inverse of 'x'
}

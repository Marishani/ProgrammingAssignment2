## put description of what you fuction do


##this fuction consists of set,get and setinverse,gedinverse
## lybrary(MASS)is used to calculate inverse for matrices
library(MASS)
makeCacheMatrix<- function(x = matrix()) {
    inv <- NULL    #Initialization inverse as NULL
    set <- function(y) {
          x <<- y
          inv <<- NULL
        }
        get <- function() {x}  #f() to get matrix x 
        setInverse <- function(inverse) {inv <<- inverse}
        getInverse <- function() {inv}
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
#this fuction is used to obtain the cache data
cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){          #to see inverse is NULL
              message("getting cached data")
              return(inv)
        }
        datx$get()
        inv <- solve(dat, ...)  #Calculate inverse value 
        x$setInverse(inv)
        inv
}



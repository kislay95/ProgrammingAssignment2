## Put comments here that give an overall description of what your
## functions do

## calculating inverse and caching it .

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function looks for inverse and calculatesif not the same values are used . If found a value already it will return a cached value.

cacheSolve <- function(x, ...) {
i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data.")
        return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinverse(i)
    i
        ## Return a matrix that is the inverse of 'x'
}

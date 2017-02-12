## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrixinverse <- function(solve) m <<- solve
        getmatrixinverse <- function() m
        list(set = set, get = get,
             setmatrixinverse = setmatrixinverse,
             getmatrixinverse = getmatrixinverse)

}


## This function checks if the inverse is already available, if yes then it will simply return it, else compute store and then return 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getmatrixinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrixinverse(m)
        m
}

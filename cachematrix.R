## Put comments here that give an overall description of what your
## functions do
## This function is written within the scope of week3 assignment of R programming course
## Write a short comment describing this function
## This function will create a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<-y
		inv <<- NULL
	}
	get <- function() x
	
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list(set = set, get = get, setinverse, getinverse = getinverse)
	
}

## Write a short comment describing this function
## this function computes the inverse of the special"matrix" returned by makeCacheMatrix (above)
## If inverse has already been calculated, then cacheSolve will return the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
        	message("get cached data")
        	return(inv)
        }
        
        data <-$get()
        inv <- solve(data, ...)
        x$getinverse(inv)
        inv
}


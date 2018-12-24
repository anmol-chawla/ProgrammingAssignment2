## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Functions to cache the inverse of a given matarix
## This function is responsible for creating a "matrix" which can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(a){
		x <<- y
		inverse <<- NULL
	}
	get <- function() x
	setInverse <- function(matrixSolve) inverse <<- matrixSolve
	getInverse <- function() inverse
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function
## This function is responsible for computing the inverse of the "matrix" obtained from the makeCacheMatrix function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
        if(!is.null(inverse)) {
        	message("retrieving cached data")
        	return(inverse)
        }
        data <- x$get()
        inverse <- solve(data)
        x$setInverse(inverse)
        inverse
}

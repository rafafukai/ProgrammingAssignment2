## R. Fukai - 11/23/2014
## Programming Assignment 2 // DataScience - R Programming
## ----------------------------------------------------------------------------------------------
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m << NULL
    }
    get <- function() x
    setInvMatrix <- function(solve) m <<- solve  ## solve functions returns the inverse matrix
    getInvMatrix <- function() m
    list (set = set
        , get = get
        , setInvMatrix = setInvMatrix
        , getInvMatrix = getInvMatrix
        )
}


## cacheSolve: This function computes the inverse of the special "matrix"
##     returned by makeCacheMatrix above. If the inverse has already been calculated
##     (and the matrix has not changed), then the cachesolve should retrieve
##     the inverse from the cache



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

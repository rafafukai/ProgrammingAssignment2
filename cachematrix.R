## R. Fukai - 11/23/2014
## Programming Assignment 2 // DataScience - R Programming

## ----------------------------------------------------------------------------------------------

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y     ## sets matrix reference variable
        m <<- NULL  ## clears matrix results variable
    }
    get <- function() x  ## gets cached reference matrix
    setInvMatrix <- function(solve) m <<- solve  ## solve functions and sets results variable with the inverse matrix
    getInvMatrix <- function() m                 ## returns results matrix variable
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
  m <- x$getInvMatrix()
  if(!is.null(m))    ## checks if invert matrix is cached
  {
    message("getting results from cached matrix")
    return(m)        ## returns inverted matrix to console
  }
  ## if not cached, get matrix and solve
  dta <- x$get()     ## stores matrix in variable dta
  m   <- solve(dta)  ## solve invert matrix
  x$setInvMatrix(m)  ## caches invert matrix
  m                  ## returns inverted matrix to console
  
}

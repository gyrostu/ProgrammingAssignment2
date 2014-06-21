
## ProgrammingAssignment2: Caching the Inverse of a Matrix
## Matrix inversion is usually a costly computation.
## This pair of functions cache the inverse of a matrix.

## This function creates a special "matrix" object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  
  set <- function( y ) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  
  setinverse <- function( i ) i <<- inverse
  
  getinverse <- function() i
  
  list( set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse )

}

## This function computes the inverse of the special 
## "matrix" returned by makeCacheMatrix above.

cacheinverse <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  i <- x$getinverse()
  if ( !is.null( i )) {
    message( ' Getting cached data')
    return( i )
  }
  
  data <- x$get()
  i <- inverse( data, ... )
  x$setinverse( inv )
  i
  
}

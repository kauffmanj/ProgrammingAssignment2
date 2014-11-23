## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( ma = matrix() ) { 
      i <- NULL 
      set <- function( matrix ) { 
             ma <<- matrix 
             i <<- NULL 
     } 
      get <- function() { 
      	ma 
     } 
      setInverse <- function(inverse) { 
         i <<- inverse 
     } 
      getInverse <- function() { 
          i 
     } 
      list(set = set, get = get, 
          setInverse = setInverse, 
          getInverse = getInverse) 
 }

## Write a short comment describing this function

cacheSolve <- function(x, ...) { 
     ma <- x$getInverse() 
     if( !is.null(ma) ) { 
             message("getting cached data") 
             return(ma) 
     } 
     data <- x$get() 
     x$setInverse(ma) 
     ma 
 } 


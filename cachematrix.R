## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL                    ##initialize the inverse
    
    set <- function(m){                ##Set the matrix
        x <<- m
        inver <<- NULL
    }
    
    get <- function(){                  ##Get the matrix
        x
    }
    
    setInverse <- function(inverse){      ##Set inverse of the matrix
        i <<- inverse
    }
    
    getInverse <- function(){             ##Get inverse of the matrix
        inver
    }
    
    ##Return list
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()                       ##Return a matrix (inverse of x) 
    
    if (!is.null(m)){                         ##Check if its set or not
        message("getting cached data!")
        return(m)
    }
    
    data <- x$get()                            ##Get matrix from object
    m <- solve(data, ...)
    x$setInverse(m)
    
    m                                          ##Return matrix
}

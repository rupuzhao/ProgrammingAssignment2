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
    
    setInverse <- function(inverse){
        i <<- inverse
    }
    
    getInverse <- function(){
        inver
    }
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

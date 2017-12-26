## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    myinverse <<- NULL
    setmatrix <- function(x){
        mymatrix <<- x
    }
    getmatrix <- function(){
        x
    }
    setinverse <-function(invx){
        myinverse <<- invx
    }
    getinverse <- function(){
        myinverse
    }
    list(setmatrix = setmatrix, getmatrix = getmatrix,
         setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    myinv <- x$getinverse()
    if(!is.null(myinv)) {
        return(myinv)
    }
    mymat <- x$getmatrix()
    myinv <- solve(mymat)
    x$setinverse(myinv)
    myinv
}

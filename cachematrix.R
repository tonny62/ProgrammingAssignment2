## This function create a list of functions that are used for get and set matrixes
makeCacheMatrix <- function(x = matrix()) {
    #initializing inverse with a null value
    myinverse <<- NULL
    #functions for get and set matixes
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


## This function is called to get cached inverse
cacheSolve <- function(x, ...) {
    myinv <- x$getinverse()
    #check if the inverse is calculated or not
    if(!is.null(myinv)) {
        # return cached inverse
        return(myinv)
    }
    #calculate inverse the set to the object x
    mymat <- x$getmatrix()
    myinv <- solve(mymat)
    x$setinverse(myinv)
    myinv
}

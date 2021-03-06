## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
## it creates a matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  
  i<-NULL 
  set<-function(y){
    x<<-y
    i<<-NULL
  }
  get<-function()x
  setInverse<-function(inverse)i <<- inverse 
  getInverse <-function()i
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
  
}


## Write a short comment describing this function
##it computes the inverse of the matrix returned by the function above
##as long that the matrix hasn't changed 
##and the inverse has already been calculated
##then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i<-x$getInverse()
  if(!is.null(i)){
    message("Getting cached data")
    return(i)
  }
  mat<-x$get()
  i<-solve(mat,...)
  x$setInverse(i)
  i
}

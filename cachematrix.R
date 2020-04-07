## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Create a function that cashe a inverse function of matrix
makeCacheMatrix <- function(x = matrix()) {
                   inverse=NULL
                   Set=function(y){
                        x<<-y
                        inverse<<-NULL
                   }
                   get=function()x
                   setInverse=function(Inverse)inverse<<-Inverse
                   getInverse=function()inverse
                   list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
##compute the inverse of matrix returned by above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
              inverse=x$getInverse()
              if(!is.null(inverse)){
                    message("getting cached data")
              return(inverse)
              }
              data=x$get()
              invserse=solve(data)
              x$getInverse(inverse)
              inverse
}
             

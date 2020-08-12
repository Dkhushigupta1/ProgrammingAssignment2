## The makecache matrix gives the cache matrix

]## The first function, makecachemtrix creates a special "matrix", which is really a list containing a function to

## set the value of the matrix
## get the value of the matrix
## set the value of the inverse of matrix
## get the value of the inverse mtrix




  makecachematrix<- function(x=matrix()){
    inV<- NULL
    set<- function(y){
      x<<- y
      inv<<- NULL
    }
  get<- function() (x)
  setInverse<- function(inverse)  (inv<<- inverse)
  getInverse<- function() (inv)
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
  
  }
## The following function calculates the inverse of the special "matrix" created with the above function. 
## However, it first checks to see if the inverse has already been calculated. 
## If so, it gets the inverse from the cache and skips the computation.
## Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the setInverse function.
  cachesolve<- function(x, ...){
    inv<- x$getInverse()
    if(!is.null(inv)){
      message(" getting cached data")
      return(inv)
      
      
    }
  mat<-x$get()
  inv<- solve(mat,...)
  x$setInverse(inv)
  inv
  
    }



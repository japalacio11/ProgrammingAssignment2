## This function will compute a matrix and generate its inverse in a saved function

## This function is set to create the matrix and sets its inverse

makeCacheMatrix <- function(w = matrix()){
  inv <- NULL
  set <- function(z){
    w <<- z
    inv <<- NULL
  }
  get <- function(){x}
  setInverse <- function(inverse){
    inv <<- inverse
  }
  getInverse <- function(){inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  
}



## This function will store the inverse so it wont have to be computed every time

cacheSolve <- function(w,...){
  inv <- w$getInverse()
  if(!is.null(inv)){
    return(inv)
  }
  mat <- w$get()
  inv <- solve(mat, ...)
  w$setInverse(inv)
  inv
}
EXmatrix <- makeCacheMatrix(matrix(1:4, nrow = 2, ncol=2))
EXmatrix$get()
EXmatrix$getInverse()
cacheSolve(EXmatrix)
EXmatrix$getInverse()

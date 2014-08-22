#This program find the inverse of a matrix.
# We have written two functions for finding inverse of a matrix.

#makeCacheMatrix function get the value of matrix and its inverse.
makeCacheMatrix <- function(x = matrix()) 
  {
     m<-NULL
     set<-function(y)
       {
        x<<-y
        m<<-NULL
      }
    get<-function() 
    x
    setmatrix<-function(solve) 
    m<<- solve
    getmatrix<-function() 
    m
    list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)
 }

#cacheSolve function returns the inverse of the matrix. It first checks that  
# inverse is computed or not. If yes then gets the result and ignore the 
# computation. If not then computes the inverse

cacheSolve <- function(x=matrix()) 
{
  m<-x$getmatrix()
  if(!is.null(m))
    {
      message("getting cached data")
      return(m)
    }
  matrix<-x$get()
  m<-solve(matrix)
  x$setmatrix(m)
  m
}

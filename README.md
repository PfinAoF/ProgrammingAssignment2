### Introduction

Enclosed is the solution to the programming assignment, based on the example provied for the mean of a vector.


### Decription

As per request, there are two functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can store (cache) its inverse.
    
      Once the object is created - e.g. by **testCacheMatrixObject <- makeCacheMatrix(matrix(c(1,2,0,0,5,6,3,8,9),nrow = 3, ncol = 3))**, 
    
      sub function _get_original_matrix_ returns the original matrix - e.g. **testCacheMatrixObject.get_original_matrix()** ;
    
      sub function _change_original_matrix_ re-sets the original matrix to a new input - e.g. **testCacheMatrixObject.change_original_matrix()** ;
    
      sub function _get_inverse_matrix_ returns the stored value of an inverted matrix - e.g. **testCacheMatrixObject.get_inverse_matrix()** and
    
      sub function _set_original_matrix_ stores the inverted matrix - e.g. **testCacheMatrixObject.set_original_matrix()** .
    
    
---------------------------------------    
    
    
    
2.  `cacheSolve`: This function returns the inverse of the original
    matrix stored in the `makeCacheMatrix` object above. 
    
    If the inverse has already been calculated (and the original matrix has not changed), then
    `cacheSolve` should retrieves the inverse from the cache.
    
    If the inverse has NOT been calculated (or the original matrix has changed), then
    `cacheSolve` calculates the inverse and the stores it to the object `makeCacheMatrix` object.
    


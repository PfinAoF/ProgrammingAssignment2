## The pair of functions below allows to store the matrix and its inverse as a pair. 



#  This function makeCacheMatrix is de-facto used as an compound storage for a matrix, 
#         which allows storing the the original matrix and its inverse in one object.

#  Any matrix can stored in a dedicated object
#     e.g. example_matrix <- makeCacheMatrix ( matrix( c(1:9), nrow = 3, ncol = 3)  )

            #  the stored matrix can be retrieved via 
            #      example_matrix$get_original_matrix()

            #  the stored matrix can be changed via (this also restes the inverse matrix)
            #      example_matrix$change_original_matrix()

            #  the inverse matrix can be stored via 
            #      example_matrix$set_inverse_matrix()

            #  onve stored, inverse matrix can be retrieved via 
            #      example_matrix$get_inverse_matrix()



makeCacheMatrix <- function(x = matrix()) {

  # objects within the closure of the function used to store the matrices inverse
      # inverse_matrix
      # original_matrix
  
  # if new object is created
  inverse_matrix <- NULL
  
  # re-set the original matrix to the new input, inverse set to NULL
  change_original_matrix <- function(original_matrix) {
    x <<- original_matrix
    inverse_matrix <<- NULL
  };
  
  # return the original matrix 
  get_original_matrix <- function() x
  
  # stores the inverse matrix 
  set_inverse_matrix <- function(inverted_matrix) inverse_matrix <<- inverted_matrix
  
  # returns the inverse matrix 
  get_inverse_matrix <- function() inverse_matrix
 
  list(get_original_matrix = get_original_matrix, 
       change_original_matrix = change_original_matrix,
       set_inverse_matrix = set_inverse_matrix,
       get_inverse_matrix = get_inverse_matrix)
}


#  The cacheSolve function takes the object (makeCacheMatrix type) and returns the inverse matrix 
cacheSolve <- function(x) {

  inv_matrix <- x$get_inverse_matrix()
  if(!is.null(inv_matrix)) {
      # in case that the inverse  is already stored in the object x, the stored value is used
      message("getting cached inverse matrix")
  }
  else 
  { 
    # in case that the inverse is NOT stored in the object x, the stored value is calculated and stored to x
      data <- x$get_original_matrix()
      message("calulating inverse matrix")
      inv_matrix <- solve(data)
      x$set_inverse_matrix(inv_matrix)
  }
  inv_matrix
}

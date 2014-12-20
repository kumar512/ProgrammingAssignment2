# Function to cache the inverse of a matrix

## The be lowfunction, makeCacheMatrix creates a special "vector", which is really a list containing a function to
## set the value of the vector
## get the value of the vector
## set the value of the inverse of a matrix
## get the value of the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
## set the value of the vector
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
## get the value of the vector
        get <- function() x
## set the value of the inverse of a matrix
        setinverse <- function(solve) m <<- solve
## get the value of the inverse of a matrix
        getinverse <- function() m
## create a special "vector", which is a list of functions
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


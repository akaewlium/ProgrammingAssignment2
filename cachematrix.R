## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) 
	{
		# create an inverse matrix of y and store the inverse in x across environment (cache)
		x <<- matrix.solve(y)
		m <<- NULL
	}
	get <- function() x
	setMean <- function(mean) m <<- mean
	getMean <- function() m
	list(set = set, get = get, setMean = setMean, getMean = getMean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getMean()
	if(!is.null(m))
	{
		message("getting cached data”)
		return(m)
	}
	data <- x$get()
	m <- mean(data, ...)
	x$setMean(m)
	m
}

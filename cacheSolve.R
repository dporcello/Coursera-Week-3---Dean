
##this function computes the inverse of the special matrix created by cachematrix
cacheSolve<-function(x,...){
	inv=x$getInv()
	if(!is.null(inv)){
		message(""getting cached data")
		return(inv)
	}
	mat<-x$get()
	inv<-solve(mat,...)
	x$setInverse(inv)
	inv
}




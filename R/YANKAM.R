
#' @title conjuguate gradient algorithm Package
#' @description This package provides an implementation of the conjugated gradient algorithm for solving linear equation systems whose matrix is symmetric definThis package provides an implementation of the conjugated gradient algorithm for solving linear equation systems with a positively defined symmetric matrixOver
#' @docType package
#' @name YANKAM
#' @examples
#' # example code
#'A <- matrix(c(2,1,6,9), nrow=2,ncol=2)
#'b <- c(4,2)
#'x0 <-c(0,0)
#'tol <- 1e-10
#'maxiter <- 10
#'gradconj(A,b,x0,tol,maxiter)
"_PACKAGE"


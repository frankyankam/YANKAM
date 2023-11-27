#' conjugate gradient algorithm
#'
#' @param A    positive definite symmetric matrix
#' @param b    a vector
#' @param x0   initial value
#' @param tol   tolerance
#' @param max_iter  maximum number of iterations
#'
#' @return    solution Ax=b
#' @examples
#'  A <- matrix(c(4, 1, 1, 3), nrow = 2)
#' b <- c(1, 2)
#' x0 <- c(0, 0)
#' tol <- 1e-10
#' maxiter <- 1000
#' gradconj(A, b, x0, tol, maxiter)
#' @export
gradconj<- function(A, b, x0, tol, max_iter,plot_chart=TRUE) {
  n <- length(x0)
  x <- x0
  r <- b - A %*% x
  p <- r
  for (k in 1:max_iter) {
    alpha <- sum(r * r) / sum(p * (A %*% p))
    x <- x + alpha * p
    r_prev <- r
    r <- r - alpha * (A %*% p)
    beta <- sum(r * r) / sum(r_prev * r_prev)
    p <- r + beta * p
    if (sqrt(sum(r * r)) < tol) {
      break
    }
    eigenvalues <- eigen(A)$values
    plot(x, type = "o", main = "Valeurs de x au fil des itérations")
    abline(h = eigenvalues[1], col = "red", lty = 2)
    abline(h = eigenvalues[2], col = "blue", lty = 2)
  }
  return(x)
}


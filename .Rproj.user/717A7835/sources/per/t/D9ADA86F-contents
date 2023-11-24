#' algorithme du gradient conjugué
#'
#' @param A    une matrice definie positive et symetrique
#' @param b    un vecteur
#' @param x0   valeur un intiale
#' @param tol   tolerance
#' @param max_iter  nombre maximum d'ittération
#'
#' @return    la solution de Ax=b
#' @examples
#'  A <- matrix(c(4, 1, 1, 3), nrow = 2)
#' b <- c(1, 2)
#' x0 <- c(0, 0)
#' tol <- 1e-10
#' maxiter <- 1000
#' YANKAM(A, b, x0, tol, maxiter)
#' @export
YANKAM<- function(A, b, x0, tol, max_iter) {
  n <- length(x0)
  x <- x0
  r <- b - A %*% x
  p <- r
  for (k in 1:max_iter) {
    alpha <- sum(r * r) / sum(p * (A %*% p))
    x <- x + alpha * p
    plot(x)
    r_prev <- r
    r <- r - alpha * (A %*% p)
    beta <- sum(r * r) / sum(r_prev * r_prev)
    p <- r + beta * p
    if (sqrt(sum(r * r)) < tol) {
      break
    }
  }
  return(x)
}

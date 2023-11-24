#' Calcule le gradient d'une fonction à n variables
#'
#' Cette fonction calcule le gradient d'une fonction à n variables.
#'
#' @param f La fonction à dériver.
#' @param x Le vecteur de variables.
#' @return Le gradient de la fonction.
#'
#' @examples
#' gradient(function(x) sum(x^2), c(1, 2, 3))
#'
#' @export
gradient <- function(f, x) {
  numDeriv::grad(f, x)
}

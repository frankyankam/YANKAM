











+% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gradient.R
\name{gradient}
\alias{gradient}
\title{Calcule le gradient d'une fonction à n variables}
\usage{
gradient(f, x)
}
\arguments{
\item{f}{La fonction à dériver.}

\item{x}{Le vecteur de variables.}
}
\value{
Le gradient de la fonction.
}
\description{
Cette fonction calcule le gradient d'une fonction à n variables.
}
\examples{
gradient(function(x) sum(x^2), c(1, 2, 3))

}

#' Sigmoid for the DRM BC model
#'
#' The sigmoid function is used to determine a 'y' value for any given 'x'.
#'
#' @param coeff collection of coefficients
#' @param x_new can be a list or a single value used to determine 'y'
#'
#' @return A 'y' value or list of 'y' values generated by the sigmoid function
#' @export
#'
sigmoid_drm_BC5 <- function (coeff, x_new){

  b = coeff$b   # slope at the inflection point 1
  c = coeff$c   # lower asymptote 2
  d = coeff$d   # higher asymptote 3
  e = coeff$e   # xmid 4
  f = coeff$f

  y = c + ((d - c + f*(x_new))/ (1 + exp(b*(log(x_new) - log(e)))))
  return(y)
}

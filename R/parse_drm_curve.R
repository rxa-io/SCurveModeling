#' Parse Coefficients from Curve
#'
#' Using the result of the modeled data, this method parses out the coefficients
#' that are needed throughout the creation of the s-curve.
#'
#' @param curve The results from the Modeled data.
#'
#' @return A list of all coefficients for a drm curve
#' @export
#'
parse_curve_drm_BC5 <- function (curve){
  temp1 <- summary(curve)$coeff

  # Decomp Media
  b <- temp1[1,1]   # slope at the inflection point
  c <- temp1[2,1]   # lower asymptote
  d <- temp1[3,1]   # higher asymptote
  e <- temp1[4,1]   # xmid
  f <- temp1[5,1]

  coeff <- list('b'= b, 'c'= c, 'd'= d, 'e'= e, 'f'= f)
  return (coeff)
}

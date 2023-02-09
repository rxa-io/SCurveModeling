#' Create Coefficient Variables
#'
#' @param x_new The sequence list of new x values.
#' @param coeff The collection of coefficient values produced by the model.
#' @param index The column index used to identify the curve variable
#'
#' @return A collection of coefficient variables
#' @export
#'
create_coeffs_variables_drm_BC5 <- function(x_new, coeff, index){

  # coefficients
  b = coeff$b   # slope at the inflection point 1
  c = coeff$c   # lower asymptote 2
  d = coeff$d   # higher asymptote 3
  e = coeff$e   # xmid 4
  f = coeff$f


  # # Get x value for asym
  coef_asym_xval_num = df_l$SaturatedSpend[which.min(abs(df_l[, index] - d))]

  change_case <- 0

  if (d > max(df_l[, index]) && (max(df_l[['SaturatedSpend']] ) > e)){
    df_l <- df_l[df_l[['SaturatedSpend']] > e,]
  } else if (min(df_l[['SaturatedSpend']] ) < e){
    df_l <- df_l[df_l[['SaturatedSpend']] < e,]
  } else {
    change_case <- 1
  }

  if (change_case == 0){
    search_linear<-lm(df_l[, index]~df_l$SaturatedSpend)
    temp2 = summary(search_linear)$coeff

    search_ln<-lm(log(df_l[, index] + 0.01)~log(df_l$SaturatedSpend+0.001))
    temp3 = summary(search_ln)$coeff

    coef_asym = c(d)
    coef_asym_xval = c(coef_asym_xval_num)
    coef_xmid = c(e)
    coef_scal = c(b)
    intercept = c(temp2[1,1])
    beta = c(temp2[2,1])
    ln_intercept = c(temp3[1,1])
    ln_beta = c(temp3[2,1])

  } else {
    coef_asym = c(d)
    coef_asym_xval = c(coef_asym_xval_num)
    coef_xmid = c(0)
    coef_scal = c(b)
    intercept = c(0)
    beta = c(1)
    ln_intercept = c(0)
    ln_beta = c(1)
  }


  df_i = data.frame(coef_asym,
                    coef_asym_xval,
                    coef_xmid,coef_scal,
                    intercept,
                    beta,
                    ln_intercept,
                    ln_beta)
  return (df_i)
}

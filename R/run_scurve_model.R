#' Run S-curve Model BC5
#'
#' Using the aomisc library function drm and the BC.5 model approach,
#' this function will return an s-curve that is fitted to the data provided.
#'
#' @param data - the dataframe containing the spend and (DecompMedia or AdstockMedia).
#' @param index - column index used to identify the curve variable
#'
#' @return The results of the model. Contains the coefficients, summary, and output values.
#' @export
#'
run_scurve_model_drm_BC5 <- function (data, index){
  logistic_drm <- drm(data[, index]~data$SaturatedSpend,
                      fct=BC.5(),
                      data=data,
                      control = drmc(method = "L-BFGS-B",
                                     constr=TRUE)
                      )
  return(logistic_drm)
}

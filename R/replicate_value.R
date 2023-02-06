#' Replicate values
#'
#' Method is used to create a list of 'n' length consisting of 'value'
#'
#' @param value The field that will be replicated
#' @param n The amount of replications that will be performed
#'
#' @return List of length 'n' consisting entirely of 'value'
#' @export
#'
replicate_value <- function (value, n){

  value_df <- data.frame(value)

  rep_value_df <- do.call("rbind", replicate(
    n, value_df, simplify = FALSE))

  return(rep_value_df)
}

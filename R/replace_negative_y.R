#' Replace Negative Y Values
#'
#' Method was created to avoid negative 'y' values from appearing in the result 
#' dataset and subsequent generated s-curve.
#'
#' @param y_new A list of all the 'y' values in the dataframe
#' @return A list of 'y' values where the negative values have been replaced 
#' with the minimum 'y' value in the list.
#' @export
#' 
replace_negative_y <- function (y_new){
  # Adjust min values to remove negatives
  min <- min(y_new)
  
  if(min < 0){
    min <- y_new[y_new > 0][1]
    y_new[y_new < 0] <- min
  }
  
  return(y_new)
}
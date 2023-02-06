#' Create New Sequenced List
#'
#' Creates a list that increased from the minimum 'x' value by the increment
#' value until max_x is reached.
#'
#' @param min_x The min value of 'x'
#' @param max_x The max value of 'x'
#' @param increment The increment used to create the sequenced list.
#'
#' @return A sequenced list starting at min_x and increasing by increment to
#' max_x
#' @export
#'
create_new_sequence <- function(min_x, max_x, increment=10){
  x_new <- seq(min_x, max_x, increment)

  return(x_new)
}

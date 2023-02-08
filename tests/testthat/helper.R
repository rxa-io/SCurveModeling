#' Load CSV
#'
#' Loads a CSV that can be used to create scurve modeling. Will be used to test
#' the functions of this package.
#'
#' @export
#'
load_csv <- function(){
  testdata <- read.csv("data/testdata.csv")
  names(testdata)[3] <- 'DecompMedia'
  names(testdata)[4] <- 'SaturatedSpend'
  names(testdata)[5] <- 'AdstockMedia'
  saveRDS(testdata, file = "test_data.rds")
}


read_RDS <- function(){
  data <- read_RDS('fixtures/test_data.rds')
  return(data)
}

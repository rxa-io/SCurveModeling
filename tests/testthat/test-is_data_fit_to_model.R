#
# is_data_fit_to_model <- function(df, has_adstock_data){
#
#   if (nrow(df) > 10 ){
#     max_decompMedia <- df$decompMedia[which.max(df$SaturatedSpend)]
#     min_decompMedia <- df$decompMedia[which.min(df$SaturatedSpend)]
#
#     if(has_adstock_data){
#       max_adstockMedia <- df$AdstockMedia[which.max(df$SaturatedSpend)]
#       min_adstockMedia <- df$AdstockMedia[which.min(df$SaturatedSpend)]
#
#       if(max_decompMedia > min_decompMedia && max_adstockMedia > min_adstockMedia){
#         return(TRUE)
#       }
#       else{
#         print("Data is not fit to model")
#         return(FALSE)
#       }
#     }
#     else{
#       if(max_decompMedia > min_decompMedia){
#         return(TRUE)
#       }
#       else{
#         print("Data is not fit to model")
#       }
#     }
#   }
#
#   return(FALSE)
# }

test_not_enough_data("Not enough data fails", {
  test_df <- read_RDS()
  test_df <- test_df.head(10)
  expect_false(is_data_fit_to_model(test_df, FALSE))
})

test_decompMedia_is_Fit("DecompData is Fit", {
  test_df <- read_RDS()
  expect_true(is_data_fit_to_model(test_df, FALSE))
})

test_AdstockMedia_is_Fit("AdstockData is Fit", {
  test_df <- read_RDS()
  expect_true(is_data_fit_to_model(test_df, TRUE))
})

test_decompMedia_is_not_Fit("DecompData is not Fit", {
  test_df <- read_RDS()
  expect_false(is_data_fit_to_model(test_df, FALSE))
})

test_AdstockMedia_is_not_Fit("AdstockData is not Fit", {
  test_df <- read_RDS()
  test_df[]
  expect_false(is_data_fit_to_model(test_df, TRUE))
})


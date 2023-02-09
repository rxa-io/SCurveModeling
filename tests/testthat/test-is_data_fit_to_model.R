
test_that("Not enough data fails", {
  test_df <- read_RDS()
  test_df <- head(test_df,10)
  expect_false(is_data_fit_to_model(test_df, FALSE))
})

test_that("DecompData is not Fit", {
  test_df <- read_RDS()
  min <- min(test_df$DecompMedia)
  test_df$DecompMedia<-replace(test_df$DecompMedia, test_df$DecompMedia != min, min)
  expect_false(is_data_fit_to_model(test_df, FALSE))
})

test_that("AdstockData is not Fit", {
  test_df <- read_RDS()
  min <- min(test_df$AdstockMedia)
  test_df$AdstockMedia<-replace(test_df$AdstockMedia, test_df$AdstockMedia != min, min)
  expect_false(is_data_fit_to_model(test_df, TRUE))
})

test_that("DecompData is Fit", {
  test_df <- read_RDS()
  expect_true(is_data_fit_to_model(test_df, FALSE))
})

test_that("AdstockData is Fit", {
  test_df <- read_RDS()
  expect_true(is_data_fit_to_model(test_df, TRUE))
})




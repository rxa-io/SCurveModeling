test_that("sigmoid_drm_BC5_works", {
  b <- 1.15   # slope at the inflection point
  c <- 58     # lower asymptote
  d <- 10534  # higher asymptote
  e <- 2407   # xmid
  f <- 0.0042

  coeff <- list('b'= b, 'c'= c, 'd'= d, 'e'= e, 'f'= f)
  x_new <- seq(93, 51697, 10)

  result <- sigmoid_drm_BC5(coeff,x_new)

  expect_length(result, 5161)
})

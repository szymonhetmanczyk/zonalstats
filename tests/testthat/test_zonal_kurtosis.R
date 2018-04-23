test_that("Result is a numeric",{
  expect_true(
    is.numeric(
      zonal_kurtosis(alabama_raster,alabama_shape)))
})


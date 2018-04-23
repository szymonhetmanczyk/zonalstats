test_that("Result is a number",{
  expect_true(is.numeric(zonal_median(alabama_raster,alabama_shape)))
})

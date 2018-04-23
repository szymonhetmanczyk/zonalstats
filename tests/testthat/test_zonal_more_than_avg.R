test_that("Result is a number",{
  expect_true(is.numeric(zonal_more_than_avg(alabama_raster,alabama_shape)))
})

test_that("Result is a number",{
  expect_true(is.numeric(zonal_var(alabama_raster,alabama_shape)))
})

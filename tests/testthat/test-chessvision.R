test_that("chessvision package loads", {
  expect_true(TRUE)
})

test_that("cv_init works when chessvision-py is available", {
  skip_if_not(reticulate::py_module_available("chessvision"),
              "chessvision-py not installed")
  expect_no_error(cv_init())
})

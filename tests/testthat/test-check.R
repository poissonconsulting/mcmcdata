test_that("check", {
  expect_identical(check_mcmc_data(mcmc_data_example), mcmc_data_example)
})

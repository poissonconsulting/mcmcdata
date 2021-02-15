test_that("select", {
  expect_identical(select(mcmc_data_example, everything()), mcmc_data_example)
  expect_identical(ncol(select(mcmc_data_example)$data), 0L)
  expect_identical(nrow(select(mcmc_data_example)$data), 2L)
})
  
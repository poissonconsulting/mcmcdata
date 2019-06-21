context("derive.mcmc_data")

test_that("derive.mcmc_data", {
  
  mcmc_data <- mcmcdata::mcmc_data_example
  mcmc_data$data$count <- 1:2
  derived <- mcmc_derive(mcmc_data, expr = "prediction <- estimate * count")
  expect_is(derived, "mcmc_data")
  
  mcmc_data <- coef(mcmc_data)
  derived <- coef(derived)
  
  expect_identical(mcmc_data$estimate * 1:2, derived$estimate)
})
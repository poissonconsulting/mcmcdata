test_that("mcmc_derive_data.mcmc_data", {
  
  mcmc_data <- mcmcdata::mcmc_data_example
  mcmc_data$data$count <- 1:2
  expect_warning(derived <- mcmc_derive_data(mcmc_data, expr = "new_par <- par * count"))
  expect_is(derived, "mcmc_data")
  
  mcmc_data <- coef(mcmc_data, simplify = TRUE)
  derived <- coef(derived, simplify = TRUE)
  
  expect_identical(mcmc_data$estimate * 1:2, derived$estimate)
})
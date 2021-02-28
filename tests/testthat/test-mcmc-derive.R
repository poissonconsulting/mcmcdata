test_that("derive.mcmc_data", {
  mcmc_data <- mcmcdata::mcmc_data_example
  mcmc_data$data$count <- 1:2
  expect_warning(derived <- mcmc_derive(mcmc_data, expr = "new_par <- par * count"))
  expect_is(derived, "mcmcr")
  
  mcmc_data <- coef(mcmc_data, simplify = TRUE)
  derived <- coef(derived, simplify = TRUE)
  
  expect_identical(mcmc_data$estimate * 1:2, derived$estimate)
})

test_that("derive.mcmc_data", {
  mcmc_data <- mcmcdata::mcmc_data_example
  mcmc_data$data$count <- 1:2
  expect_warning(derived <- mcmc_derive(
    mcmc_data, expr = 
      "new_par <- matrix(NA, 2, 2)
       new_par[1,1] <- par[1] * count[1]
       new_par[2,1] <- par[1]^2
       other <- par[1:3]"))
    
  expect_is(derived, "mcmcr")
  
  derived <- coef(derived, simplify = TRUE)
  expect_equal(derived$estimate, 
               c(3.718025, 13.82373616625, NA, NA, 3.718025, 4.718025, NA))
})
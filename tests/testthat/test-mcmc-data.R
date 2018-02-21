context("mcmcdata")

test_that("mcmc_data", {
  mcmcr_example <- mcmcr::mcmcr_example
  mcmc_data_example <- mcmc_data(mcmcr_example$alpha, dplyr::starwars[1:2, c("homeworld", "species", "films")])
  expect_identical(mcmc_data_example, mcmcdata::mcmc_data_example)
})

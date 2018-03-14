context("combine-samples_n")

test_that("combine_samples_n", {
  mcmc_data_example <- mcmcdata::mcmc_data_example
  mcmc_data_example <- dplyr::select(mcmc_data_example, -films)
  expect_equal(mcmcr::combine_samples_n(mcmc_data_example, mcmc_data_example, mcmc_data_example, by = c("homeworld", "species")), mcmc_data_example, check.attributes = FALSE)
  
  expect_equal(mcmcr::combine_samples_n(list(mcmc_data_example, mcmc_data_example, mcmc_data_example), by = c("homeworld", "species")), mcmc_data_example, check.attributes = FALSE)
})

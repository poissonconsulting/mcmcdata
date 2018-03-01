context("combine-samples")

test_that("combine_samples", {
  mcmc_data_example <- mcmcdata::mcmc_data_example
  mcmc_data_example <- dplyr::select(mcmc_data_example, -films)
  expect_identical(mcmcr::combine_samples(mcmc_data_example, mcmc_data_example, by = c("homeworld", "species")), mcmc_data_example)
})
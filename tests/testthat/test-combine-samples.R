test_that("combine_samples", {
  mcmc_data_example <- dplyr::select(mcmcdata::mcmc_data_example, -films)
  expect_equal(mcmcr::combine_samples(mcmc_data_example, mcmc_data_example, by = c("homeworld", "species")), mcmc_data_example)
})
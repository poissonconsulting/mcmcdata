context("arrange")

test_that("arrange", {
  expect_identical(arrange(mcmc_data_example), mcmc_data_example)
  expect_identical(arrange(mcmc_data_example, species)$data$species, c("Droid", "Human"))
})
context("filter")

test_that("filter", {
  expect_identical(filter(mcmc_data_example), mcmc_data_example)
  
  filter1 <- filter(mcmc_data_example, species == "Human")
  expect_identical(filter1$data$species, "Human")
})
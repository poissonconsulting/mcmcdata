context("slice")

test_that("slice", {
  expect_identical(slice(mcmc_data_example), mcmc_data_example)
  
  slice1 <- slice(mcmc_data_example, 1)
  expect_identical(slice1$data$species, "Human")
  slice1 <- slice(mcmc_data_example, c(2,n()))
  expect_identical(slice1$data$species, c("Droid", "Droid"))
})
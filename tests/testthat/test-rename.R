context("rename")

test_that("rename", {
  expect_identical(rename(mcmc_data_example), mcmc_data_example)
  expect_identical(colnames(rename(mcmc_data_example, Species = species)$data), c("homeworld", "Species", "films"))
})
  
context("summarise")

test_that("summarise", {
  grouped <- group_by(mcmc_data_example, homeworld, species)
  expect_identical(summarise(grouped), mcmc_data_example)
})
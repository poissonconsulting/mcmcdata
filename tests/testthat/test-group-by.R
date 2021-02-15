test_that("group_by", {
  expect_identical(group_by(mcmc_data_example), mcmc_data_example)
  grouped <- group_by(mcmc_data_example, homeworld, species)
  expect_identical(groups(grouped$data), list(as.name("homeworld"), as.name("species")))
  expect_identical(ungroup(grouped), mcmc_data_example)
})

test_that("mutate", {
  expect_identical(colnames(mutate(mcmc_data_example, homeworld2 = homeworld)$data), c("homeworld", "species", "films", "homeworld2"))
})

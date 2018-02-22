context("join")

test_that("join", {
  expect_identical(inner_join(mcmc_data_example, select(mcmc_data_example, -films),
                              by = c("homeworld", "species")), mcmc_data_example)
  expect_identical(anti_join(mcmc_data_example, select(slice(mcmc_data_example, 1), -films),
                              by = c("homeworld", "species")), slice(mcmc_data_example,2))
  expect_identical(semi_join(mcmc_data_example, mcmc_data_example,
                              by = c("homeworld", "species")), mcmc_data_example)
#  expect_identical(left_join(mcmc_data_example, select(slice(mcmc_data_example, 1), -films),
#                              by = c("homeworld", "species")), mcmc_data_example)
})
  
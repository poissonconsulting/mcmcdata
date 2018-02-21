context("join")

test_that("inner_join", {
  expect_identical(inner_join(mcmc_data_example, select(mcmc_data_example, -films),
                              by = c("homeworld", "species")), mcmc_data_example)
  expect_identical(nrow(anti_join(mcmc_data_example, mcmc_data_example,
                              by = c("homeworld", "species"))), 0L)
  expect_identical(semi_join(mcmc_data_example, mcmc_data_example,
                              by = c("homeworld", "species")), mcmc_data_example)
  expect_identical(left_join(mcmc_data_example, filter(mcmc_data_example, 1),
                              by = c("homeworld", "species")), mcmc_data_example)
})
  
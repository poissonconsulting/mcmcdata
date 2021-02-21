test_that("join", {
  expect_identical(inner_join(mcmc_data_example, select(mcmc_data_example, -films),
                              by = c("homeworld", "species")), mcmc_data_example)
  expect_identical(anti_join(mcmc_data_example, select(slice(mcmc_data_example, 1), -films),
                             by = c("homeworld", "species")), slice(mcmc_data_example,2))
  expect_identical(semi_join(mcmc_data_example, mcmc_data_example,
                             by = c("homeworld", "species")), mcmc_data_example)
  expect_identical(left_join(mcmc_data_example, select(slice(mcmc_data_example, 1), -films),
                             by = c("homeworld", "species")), mcmc_data_example)
  
  right <- right_join(select(slice(mcmc_data_example, 1), -films), mcmc_data_example,
                      by = c("homeworld", "species"))
  expect_identical(right$data, mcmc_data_example$data)
  
  coef_right <- coef(right, simplify = TRUE)
  expect_identical(colnames(coef_right), 
                   c("homeworld", "species", "films", "estimate", "lower", "upper", 
                     "svalue"))
  expect_equal(coef_right$estimate, c(3.718025, NA))
})

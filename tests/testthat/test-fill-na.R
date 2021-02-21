test_that("multiplication works", {
  right <- right_join(select(slice(mcmc_data_example, 1), -films), mcmc_data_example,
                      by = c("homeworld", "species"))
  right <- fill_na(right, 1.33)
  
  
  coef_right <- coef(right, simplify = TRUE)
  expect_identical(colnames(coef_right), 
                   c("homeworld", "species", "films", "estimate", "lower", "upper", 
                     "svalue"))
  expect_equal(coef_right$estimate, c(3.718025, 1.33))
})

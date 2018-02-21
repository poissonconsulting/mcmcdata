context("coef")

test_that("coef", {
  coef <- coef(mcmc_data_example)
  expect_is(coef, "tbl_df")
  expect_identical(colnames(coef), c("homeworld", "species", "films", "estimate", "sd", "zscore", "lower", "upper", "pvalue"))
  expect_identical(coef$species, c("Human", "Droid"))
})
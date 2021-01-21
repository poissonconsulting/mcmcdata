context("coef")

test_that("coef", {
  coef <- coef(mcmc_data_example, simplify = TRUE)
  expect_is(coef, "tbl_df")
  expect_identical(colnames(coef), c("homeworld", "species", "films", "estimate", "lower", "upper", "svalue"))
  expect_identical(coef$species, c("Human", "Droid"))
})
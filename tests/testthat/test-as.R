context("as")

test_that("as", {
  expect_identical(class(mcmcr::as.mcarray(mcmc_data_example)), "mcarray")
  chk::expect_chk_error(class(coda::as.mcmc(mcmc_data_example)))
  expect_identical(class(coda::as.mcmc.list(mcmc_data_example)), "mcmc.list")
  expect_identical(class(as.mcmcarray(mcmc_data_example)), "mcmcarray")
  expect_identical(class(as.mcmcr(mcmc_data_example)), "mcmcr")
  expect_identical(class(as.data.frame(mcmc_data_example)), "data.frame")
  expect_identical(class(as_tibble(mcmc_data_example)), c("tbl_df", "tbl", "data.frame"))
})

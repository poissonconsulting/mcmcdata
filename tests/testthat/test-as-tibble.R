test_that("as_tibble old", {
  tibble <- as_tibble(mcmc_data_example)
  expect_identical(nrow(tibble), 2L)
  expect_identical(colnames(tibble), c("homeworld", "species", "films"))
  expect_identical(class(tibble), c("tbl_df", "tbl", "data.frame"))
})

test_that("as_tibble samples = TRUE", {
  tibble <- as_tibble(mcmc_data_example, samples = TRUE)
  expect_identical(nrow(tibble), 1600L)
  expect_identical(colnames(tibble), c("homeworld", "species", "films", ".sample", "value"))
  expect_identical(class(tibble), c("tbl_df", "tbl", "data.frame"))
})

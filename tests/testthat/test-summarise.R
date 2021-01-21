context("summarise")

test_that("summarise", {
  expect_identical(summarise(mcmc_data_example)$data, structure(list(), row.names = c(NA, -1L), .Names = character(0), class = c("tbl_df", 
                                                                                                                             "tbl", "data.frame")))
  grouped <- group_by(mcmc_data_example, homeworld, species)
  expect_equal(arrange(summarise(grouped), species), arrange(select(mcmc_data_example, -films), species),
                   check.attributes = FALSE)
  grouped <- group_by(mcmc_data_example, homeworld)
  summarised <- summarise(grouped)
  expect_identical(colnames(summarised$data), "homeworld")
  expect_identical(summarised$data$homeworld, "Tatooine")
  expect_identical(pdims(summarised$mcmc), 1L)
  expect_equal(coef(summarised, simplify = TRUE)$estimate, 8.44, tolerance = 0.001)
})
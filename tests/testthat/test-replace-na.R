test_that("replace_na", {
  example <- mcmcdata::mcmc_data_example
  example$data$species[1] <- NA_character_
  
  expect_identical(replace_na(example, list(species = "Human")), mcmcdata::mcmc_data_example)
})

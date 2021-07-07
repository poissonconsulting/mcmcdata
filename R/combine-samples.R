#' @export
combine_samples.mcmc_data <- function(x, x2, fun = mean, by = NULL, suffix = c(".x", ".y"), ...) {
  if (!is.mcmc_data(x2)) error("x2 must be an mcmc_data")
  
  chk_not_subset(colnames(x$data), c("..IDX", "..IDX2"))
  chk_not_subset(colnames(x2$data), c("..IDX", "..IDX2"))

  data <- x$data
  data2 <- x2$data

  data <- add_IDX(data, 1)
  data2 <- add_IDX(data2, 2)

  data <- dplyr::inner_join(data, data2, by = by, suffix = suffix)

  mcmc <- filter_mcmcarray(x$mcmc, 1, data = data)
  mcmc2 <- filter_mcmcarray(x2$mcmc, 2, data = data)

  mcmc <- combine_samples(mcmc, mcmc2, fun = fun)

  data <- rm_IDX(data)
  mcmc_data(mcmc, data)
}

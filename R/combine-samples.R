#' @export
combine_samples.mcmc_data <- function(x, x2, fun = mean, by = NULL, suffix = c(".x", ".y"), ...) {
  if (!is.mcmc_data(x2)) error("x2 must be an mcmc_data")
  
  check_missing_colnames(x$data, c("..IDX", "..IDX2"))
  check_missing_colnames(x2$data, c("..IDX", "..IDX2"))

  data <- x$data
  data2 <- x2$data

  data$..IDX <- 1:nrow(data)
  data2$..IDX2 <- 1:nrow(data2)
  
  data <- dplyr::inner_join(data, data2, by = by, suffix = suffix)

  mcmc <- x$mcmc
  mcmc2 <- x2$mcmc
  
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"

  mcmc2 <- mcmc2[,,data$..IDX2,drop = FALSE]
  class(mcmc2) <- "mcmcarray"

  mcmc <- combine_samples(mcmc, mcmc2, fun = fun)

  data$..IDX <- NULL
  data$..IDX2 <- NULL
  mcmc_data(mcmc, data)
}

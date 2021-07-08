#' @export
extras::fill_na

#' @inherit extras::fill_na
#' @export
fill_na.mcmc_data <- function(x, value = 0, ...) {
  chk_unused(...)
  x$mcmc <- fill_na(x$mcmc, value = value)
  x
}

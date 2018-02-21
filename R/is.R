#' Is an MCMC data object
#'
#' Tests whether x is an object of class 'mcmc_data'
#'
#' @param x The object to test.
#' @return A flag indicating whether the test was positive.
#' @export
is.mcmc_data <- function(x) inherits(x, "mcmc_data")

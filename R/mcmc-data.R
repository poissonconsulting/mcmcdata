#' MCMC Data
#'
#' Combines an mcmc object with a data frame. 
#' The mcmc object must be for a single parameter of the same length as the number of rows in the data frame.
#' The resultant object can be filtered or summarized or the coef calculated.
#'
#' @param mcmc An mcmc object with one parameter
#' @param data A data frame
#' @return An object of class \code{mcmc_data}
#' @export
mcmc_data <- function(mcmc, data) {
  check_data(data, nrow = TRUE)
  data <- dplyr::as_tibble(data)
  mcmc <- as.mcmcarray(mcmc)
  if(!identical(pdims(mcmc), nrow(data)))
    error("mcmc's parameter must be the same length as the number of rows in data")
  
  mcmc_data <- list(mcmc = mcmc, data = data)

  set_class(mcmc_data, "mcmc_data")
}

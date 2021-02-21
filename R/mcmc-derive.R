#' mcmc_derive mcmc_data
#' 
#' @param object An mcmc_data object
#'
#' @param expr A string of the R expression.
#' @param values A named list of values for objects not in object$data
#' @param parameter A string of the name of the current MCMC samples in expr.
#' @param monitor A regular expression identifying the name of the derived MCMC samples in expr.
#' @param monitor A string of the 
#' @param parallel A flag specifying whether to run in parallel.
#' @param ... An unused.
#'
#' @export
mcmc_derive.mcmc_data <- function(object, expr = "derived <- current", 
                                  values = list(), 
                                  parameter = "current",
                                  monitor = "^derived$",
                                  parallel = TRUE, ...) {
  check_string(expr)
  check_string(monitor)
  check_string(parameter)
  check_flag(parallel)
  check_unused(...)
  
  data <- as.data.frame(object)
  mcmc <- as.mcmcr(object)
  pars(mcmc) <- parameter
  values <- c(values, as.list(data))
  mcmc <- mcmc_derive(mcmc, expr = expr, monitor = monitor, values = values,
                      parallel = TRUE)
  mcmc_data(mcmc, data)
}

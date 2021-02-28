#' @export
mcmcderive::mcmc_derive

#' mcmc_derive mcmc_data
#' 
#' Gets mcmcr object of one or more derived parameters.
#' To return an mcmc_data object use mcmc_derive_data().
#' By default the current parameter is call par.
#' 
#' @inheritParams mcmcderive::mcmc_derive
#' @param object An mcmc_data object
#' @param expr A string of the R expression.
#' @param values A named list of values for objects not in object$data
#' @param parameter A string of the name of the current MCMC samples in expr.
#' @param ... Unused.
#' @return An mcmcr object of the derived parameters.
#'
#' @export
mcmc_derive.mcmc_data <- function(object, expr = "new_par <- par", 
                                  values = list(), 
                                  parameter = "par",
                                  monitor = ".*",
                                  parallel = FALSE, 
                                  silent = getOption("mcmcderive.silent", FALSE),
                                  ...) {
  check_string(expr)
  check_string(monitor)
  check_string(parameter)
  check_flag(parallel)
  check_unused(...)
  
  data <- as.data.frame(object)
  mcmc <- as.mcmcr(object)
  pars(mcmc) <- parameter
  values <- c(values, as.list(data))
  mcmc_derive(mcmc, expr = expr, monitor = monitor, values = values,
                      parallel = parallel)
}

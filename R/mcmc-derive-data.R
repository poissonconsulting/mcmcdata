#' Derive MCMC Data
#'
#' Get mcmc_data object.
#'
#' @param object The object.
#' @param ... Not used.
#' @export
mcmc_derive_data <- function(object, ...) {
  UseMethod("mcmc_derive_data")
}

#' mcmc_derive mcmc_data
#' 
#' Gets mcmc_data object of a derived parameters.
#' To return an mcmcr object of one or more derived parameters use mcmc_derive().
#' By default the current parameter is call par and the derived one is called new_par.
#' 
#' @inheritParams mcmcderive::mcmc_derive
#' @param object An mcmc_data object
#' @param expr A string of the R expression.
#' @param values A named list of values for objects not in object$data
#' @param parameter A string of the name of the current MCMC samples in expr.
#' @param monitor A string of the name of the derived parameter to return.
#' @param ... Unused.
#' @return An mcmc_data object.
#'
#' @export
mcmc_derive_data.mcmc_data <- function(object, expr = "new_par <- par", 
                                  values = list(), 
                                  parameter = "par",
                                  monitor = "new_par",
                                  parallel = FALSE, 
                                  silent = getOption("mcmcderive.silent", FALSE),
                                  ...) {
   check_unused(...)
  
  data <- as.data.frame(object)
  mcmc <- as.mcmcr(object)
  pars(mcmc) <- parameter
  values <- c(values, as.list(data))
  monitor <- paste0("^", monitor, "$", collapse = "")
  mcmc <- mcmc_derive(mcmc, expr = expr, monitor = monitor, values = values,
                      parallel = parallel, silent = silent)
  mcmc_data(mcmc, data)
}
#' @export
mcmc_derive.mcmc_data <- function(object, expr = "prediction <- estimate", 
                                  values = list(), 
                                  monitor = "prediction", ...) {
  check_string(expr)
  check_string(monitor)
  check_unused(...)
  
  data <- as.data.frame(object)
  mcmc <- as.mcmcr(object)
  parameters(mcmc) <- "estimate"
  values <- c(values, as.list(data))
  mcmc <- mcmc_derive(mcmc, expr = expr, monitor = monitor, values = values)
  mcmc_data(mcmc, data)
}

#' Check mcmc data
#' 
#' Checks an object is a \code{mcmc_data}.
#' 
#' @inheritParams checkr::check_integer
#' @return An invisible copy of x (if it doesn't throw an error).
#' @export
#'
#' @examples
#' check_mcmc_data(mcmcdata::mcmc_data_example)
check_mcmc_data <- function(x, x_name = substitute(x)) {
  x_name <- chk_deparse(x_name)
  check_inherits(x, "mcmc_data", x_name = x_name)
  check_data(x$data, x_name = paste0("data of ", x_name), nrow = TRUE)
  check_inherits(x$mcmc, "mcmcarray", x_name = paste0("mcmc of ", x_name))
  if(!identical(mcmcr::npdims(x$mcmc), 1L))
    err("mcmc of ", x_name, " must be a parameter vector")
  
  pdims <- mcmcr::pdims(x$mcmc)
  if(!identical(nrow(x$data), pdims))
    err("mcmc of ", x_name, " is a parameter vector of length ", pdims, 
        " but data has ", nrow(x$data), " rows")
  invisible(x)
}

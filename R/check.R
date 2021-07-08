#' Check mcmc data
#' 
#' Checks an object is a \code{mcmc_data}.
#' 
#' @inheritParams chk::chk_integer
#' @return An invisible copy of x (if it doesn't throw an error).
#' @export
#'
#' @examples
#' check_mcmc_data(mcmcdata::mcmc_data_example)
check_mcmc_data <- function(x, x_name = NULL) {
  if (is.null(x_name)) 
    x_name <- deparse_backtick_chk((substitute(x))) 
  chk_string(x_name)
  chk_is(x, "mcmc_data", x_name = x_name)
  check_data(x$data, x_name = paste0("data of ", x_name), nrow = TRUE)
  chk_is(x$mcmc, "mcmcarray", x_name = paste0("mcmc of ", x_name))
  if(!identical(npdims(x$mcmc), 1L))
    err("mcmc of ", x_name, " must be a parameter vector")
  
  pdims <- pdims(x$mcmc)
  if(!identical(nrow(x$data), pdims))
    err("mcmc of ", x_name, " is a parameter vector of length ", pdims, 
        " but data has ", nrow(x$data), " rows")
  invisible(x)
}

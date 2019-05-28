#' Bind Rows
#'
#' @param x A mcmc_data
#' @param y A second mcmc_data
#' @export
#' @examples 
#' bind_rows2(mcmc_data_example, mcmc_data_example)
bind_rows2 <- function(x, y) {
  check_mcmc_data(x)
  check_mcmc_data(y)
  
  data <- bind_rows(x$data, y$data)
  mcmc <- bind_dimensions(x$mcmc, y$mcmc, along = 1L)
  print(mcmc)
  mcmc_data(mcmc, data)
}

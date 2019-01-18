#' @export
as.mcarray.mcmc_data <- function(x, ...) {
  as.mcarray(x$mcmc)
}

#' @export
as.mcmc.mcmc_data <- function(x, ...) {
  coda::as.mcmc(x$mcmc)
}

#' @export
as.mcmc.list.mcmc_data <- function(x, ...) {
  coda::as.mcmc.list(x$mcmc)
}

#' @export
as.mcmcarray.mcmc_data <- function(x, ...) {
  as.mcmcarray(x$mcmc)
}

#' @export
as.mcmcr.mcmc_data <- function(x, ...) {
  as.mcmcr(x$mcmc)
}

#' @export
as_tibble.mcmc_data <- function(x, ...) {
  dplyr::as_tibble(x$data)
}

#' @export
as.data.frame.mcmc_data <- function(x, ...) {
  as.data.frame(x$data)
}

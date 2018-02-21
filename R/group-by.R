#' Group mcmc data
#'
#' @inheritParams dplyr::group_by
#' @param .data An mcmc_data object
#' @export
#' @examples 
#' group_by(mcmc_data_example, homeworld, species)
group_by_.mcmc_data <- function(.data, ..., add = FALSE){
  .data$data <- dplyr::group_by(.data$data, ..., add = add)
  .data
}

#' Ungroup mcmc data
#'
#' @inheritParams dplyr::group_by
#' @param x An mcmc_data object
#' @export
#' @examples 
#' ungroup(mcmc_data_example)
ungroup.mcmc_data <- function(x, ...){
  x$data <- ungroup(x$data, ...)
  x
}

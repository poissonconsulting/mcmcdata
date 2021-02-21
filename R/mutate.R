#' @export
dplyr::mutate

#' Mutate mcmc_data
#'
#' @inheritParams dplyr::rename
#' @param .data An mcmc_data object
#' @export
#' @examples 
#' rename(mcmc_data_example, Spp = species)
mutate.mcmc_data <- function(.data, ...){
  .data$data <- mutate(.data$data, ...)
  .data
}

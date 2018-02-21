#' Rename mcmcr data
#'
#' @inheritParams dplyr::rename
#' @param .data An mcmc_data object
#' @export
#' @examples 
#' rename(mcmc_data_example, Spp = species)
rename.mcmc_data <- function(.data, ...){
  .data$data <- rename(.data$data, ...)
  .data
}

#' Select mcmcr data
#'
#' @inheritParams dplyr::select
#' @param .data An mcmc_data object
#' @export
#' @examples 
#' select(mcmc_data_example, species, homeworld)
select.mcmc_data <- function(.data, ...){
  .data$data <- select(.data$data, ...)
  .data
}

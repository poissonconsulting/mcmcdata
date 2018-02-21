#' Slice mcmcr data
#'
#' @inheritParams dplyr::slice
#' @param .data An mcmc_data object
#' @export
#' @examples 
#' filter(mcmc_data_example, species == "Droid")
filter.mcmc_data <- function(.data, ...){
  check_missing_colnames(.data$data, "..IDX")
  
  data <- .data$data
  data$..IDX <- 1:nrow(data)
  data <- filter(data, ...)
  
  mcmc <- .data$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL

  mcmc_data(mcmc, data)
}

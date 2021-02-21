#' @export
dplyr::arrange

#' Arrange mcmcr data
#'
#' @inheritParams dplyr::arrange
#' @param .data An mcmc_data object
#' @export
#' @examples 
#' arrange(mcmc_data_example, species, homeworld)
arrange.mcmc_data <- function(.data, ...){
  check_missing_colnames(.data$data, "..IDX")
  
  data <- .data$data
  data$..IDX <- 1:nrow(data)
  data <- arrange(data, ...)
  
  mcmc <- .data$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL

  mcmc_data(mcmc, data)
}

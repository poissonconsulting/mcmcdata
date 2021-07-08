#' @export
dplyr::slice

#' Slice mcmcr data
#'
#' @inheritParams dplyr::slice
#' @param .data An mcmc_data object
#' @export
#' @examples 
#' slice(mcmc_data_example, 1L)
slice.mcmc_data <- function(.data, ...){
  chk_not_subset(colnames(.data$data), "..IDX")
  
  data <- .data$data
  data$..IDX <- 1:nrow(data)
  data <- slice(data, ...)
  
  mcmc <- .data$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL

  mcmc_data(mcmc, data)
}

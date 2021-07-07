summarise_vector_index <- function(i, vector, idx, fun) {
  fun(vector[idx == i])
}

summarise_vector <- function(x, idx, fun) {
  idxs <- sort(unique(idx))
  idxs <- vapply(idxs, FUN = summarise_vector_index, FUN.VALUE = 1,
                   vector = x, idx = idx, fun = fun, USE.NAMES = FALSE)
  idxs
}

summarise_mcmc <- function(x, idx, fun) {
  x <- plyr::aaply(x, .margins = c(1,2), .fun = summarise_vector, idx = idx,
                     fun = fun, .drop = FALSE)
  set_class(x, "mcmcarray")
}

#' @export
dplyr::summarise

#' Summarise mcmc data
#'
#' @inheritParams dplyr::summarise
#' @param .data An mcmc_data object
#' @param .fun The function to use to summarise the MCMC samples.
#' @export
summarise.mcmc_data <- function(.data, ..., .fun = sum){
  chk_function(.fun)
  
  data <- .data$data
  if (is.null(groups(data)))  error("mcmc_data must be grouped to summarize")

  mcmc <- .data$mcmc
  
  mcmc <- summarise_mcmc(mcmc, group_indices(data), fun = .fun)
  
  data <- dplyr::summarise(data, ...)

  mcmc_data(mcmc, data)
}

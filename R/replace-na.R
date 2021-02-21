#' @export
tidyr::replace_na

#' Replace Missing Values mcmc data
#'
#' @inheritParams tidyr::replace_na
#' @export
replace_na.mcmc_data <- function(data, replace, ...){
  data$data <- tidyr::replace_na(data$data, replace = replace, ...)
  data
}

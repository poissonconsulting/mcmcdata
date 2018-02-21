#' Anti join mcmc data
#'
#' @inheritParams dplyr::inner_join
#' @export
anti_join.mcmc_data <- function(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...){
  y <- as.data.frame(y)
  check_missing_colnames(x$data, "..IDX")
  check_missing_colnames(y, "..IDX")
  
  data <- x$data
  data$..IDX <- 1:nrow(data)
  data <- dplyr::anti_join(data, y, by = by, copy = copy, suffix = suffix, ...)
  
  mcmc <- x$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL
  mcmc_data(mcmc, data)
}

#' Semi join mcmc data
#'
#' @inheritParams dplyr::inner_join
#' @export
semi_join.mcmc_data <- function(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...){
  y <- as.data.frame(y)
  check_missing_colnames(x$data, "..IDX")
  check_missing_colnames(y, "..IDX")
  
  data <- x$data
  data$..IDX <- 1:nrow(data)
  data <- dplyr::semi_join(data, y, by = by, copy = copy, suffix = suffix, ...)
  
  mcmc <- x$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL
  mcmc_data(mcmc, data)
}

#' Inner join mcmc data
#'
#' @inheritParams dplyr::inner_join
#' @export
inner_join.mcmc_data <- function(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...){
  y <- as.data.frame(y)
  check_missing_colnames(x$data, "..IDX")
  check_missing_colnames(y, "..IDX")
  
  data <- x$data
  data$..IDX <- 1:nrow(data)
  data <- dplyr::inner_join(data, y, by = by, copy = copy, suffix = suffix, ...)
  
  mcmc <- x$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL
  mcmc_data(mcmc, data)
}

#' Left join mcmc data
#'
#' @inheritParams dplyr::inner_join
#' @export
left_join.mcmc_data <- function(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...){
  y <- as.data.frame(y)
  check_missing_colnames(x$data, "..IDX")
  check_missing_colnames(y, "..IDX")
  
  data <- x$data
  data$..IDX <- 1:nrow(data)
  data <- dplyr::anti_join(data, y, by = by, copy = copy, suffix = suffix, ...)
  
  mcmc <- x$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL
  mcmc_data(mcmc, data)
}

#' @export
dplyr::anti_join

#' Anti join mcmc data
#'
#' @inheritParams dplyr::anti_join
#' @export
anti_join.mcmc_data <- function(x, y, by = NULL, copy = FALSE, ...){
  y <- as.data.frame(y)
  check_missing_colnames(x$data, "..IDX")
  check_missing_colnames(y, "..IDX")
  
  data <- x$data
  data$..IDX <- 1:nrow(data)
  data <- dplyr::anti_join(data, y, by = by, copy = copy, ...)
  
  mcmc <- x$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL
  mcmc_data(mcmc, data)
}

#' @export
dplyr::semi_join

#' Semi join mcmc data
#'
#' @inheritParams dplyr::semi_join
#' @export
semi_join.mcmc_data <- function(x, y, by = NULL, copy = FALSE, ...){
  y <- as.data.frame(y)
  check_missing_colnames(x$data, "..IDX")
  check_missing_colnames(y, "..IDX")
  
  data <- x$data
  data$..IDX <- 1:nrow(data)
  data <- dplyr::semi_join(data, y, by = by, copy = copy, ...)
  
  mcmc <- x$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL
  mcmc_data(mcmc, data)
}

#' @export
dplyr::inner_join

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

#' @export
dplyr::left_join

#' Left join mcmc data
#'
#' @inheritParams dplyr::left_join
#' @export
left_join.mcmc_data <- function(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...){
  y <- as.data.frame(y)
  check_missing_colnames(x$data, "..IDX")
  check_missing_colnames(y, "..IDX")
  
  data <- x$data
  data$..IDX <- 1:nrow(data)
  data <- dplyr::left_join(data, y, by = by, copy = copy, suffix = suffix, ...)
  
  mcmc <- x$mcmc
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL
  mcmc_data(mcmc, data)
}

#' @export
dplyr::right_join

#' Right join mcmc data
#'
#' @inheritParams dplyr::right_join
#' @export
right_join.mcmc_data <- function(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...){
  y <- as.data.frame(y)
  check_missing_colnames(x$data, "..IDX")
  check_missing_colnames(y, "..IDX")
  
  data <- x$data
  data$..IDX <- 1:nrow(data)
  ..IDXn <- nrow(data) + 1L
  
  data <- dplyr::right_join(data, y, by = by, copy = copy, suffix = suffix, ...)
  data$..IDX[is.na(data$..IDX)] <- ..IDXn

  mcmc <- x$mcmc

  mcmc_na <- mcmc[,,1,drop = FALSE]
  is.na(mcmc_na) <- TRUE
  mcmc <- abind::abind(mcmc, mcmc_na, along = 3L)
  mcmc <- mcmc[,,data$..IDX,drop = FALSE]
  class(mcmc) <- "mcmcarray"
  
  data$..IDX <- NULL
  mcmc_data(mcmc, data)
}
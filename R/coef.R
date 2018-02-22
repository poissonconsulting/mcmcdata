#' Coefficients
#' 
#' Gets the coefficient table as a tibble.
#' 
#' @param object The mcmc_data object to get the coefficent table for.
#' @param conf_level A probability specifying the confidence level.
#' @param estimate A function to calculate the point estimate.
#' @param ... Unused
#' @export
#' @examples 
#' coef(mcmc_data_example)
coef.mcmc_data <- function(object, conf_level = 0.95, estimate = stats::median, ...) {
  coef <- coef(object$mcmc, conf_level = conf_level, estimate = estimate, ...)
  coef <- dplyr::bind_cols(object$data, coef)
  coef$term <- NULL
  coef
}

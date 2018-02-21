#' Coefficients
#' 
#' @export
#' @examples 
#' coef(mcmc_data_example)
coef.mcmc_data <- function(object, conf_level = 0.95, estimate = stats::median, ...) {
  coef <- coef(object$mcmc, conf_level = conf_level, estimate = estimate, ...)
  coef <- dplyr::bind_cols(object$data, coef)
  coef$term <- NULL
  coef
}

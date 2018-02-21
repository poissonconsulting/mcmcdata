#' @export
combine_samples.mcmcr_data <- function(x, x2, fun = mean, by = NULL, suffix = c(".x", ".y"), ...) {
  if (!is.mcmcr_data(x2)) error("x2 must be an mcmcr_data")

  check_mcmcr_data(x)
  check_mcmcr_data(x2)

  data <- as.data.frame(x)
  data2 <- as.data.frame(x2)

  data["..ID1"] <- 1:nrow(data)
  data2["..ID2"] <- 1:nrow(data2)
  data <- dplyr::inner_join(data2, by = by, suffix = suffix)

  mcmcr <- as.mcmcr(x)
  mcmcr2 <- as.mcmcr(x2)

  names <- vapply(mcmcr, names, "")

  if (!identical(parameters(mcmcr), parameters(mcmcr2)))
    error("mcmcr components must have the same parameters")

  for (i in seq_along(mcmcr)) {
    mcmcr[[i]] <- mcmcr[[i]][[1]][,,data[[paste0("..ID", i)]], drop = FALSE]
    class(mcmcr[[i]]) <- "mcmcarray"
  }

  mcmcr <- combine_samples(mcmcr, mcmcr2, fun = fun)


  data <- data[!grepl("^[.][.]ID", colnames(data))]
  mcmcr <- list(mcmcr)
  names(mcmcr) <- names[1]

  class(mcmcr) <- "mcmcr"

  x <- mcmcr_data(mcmcr, data)
  check_mcmcr_data(x)
  x
}

error <- function(...) stop(..., call. = FALSE)

set_class <- function(x, class) {
  class(x) <- class
  x
}

add_IDX <- function(data, number) {
  if(any(grepl("^..IDX", colnames(data))))
    error("data must not include column names beginning with '..IDX'")
  data[paste0("..IDX", number)] <- 1:nrow(data)
  data
}

rm_IDX <- function(data) {
  data[grepl("^..IDX", colnames(data))] <- NULL
  data
}

filter_mcmcarray <- function(mcmc, number, data) {
  mcmc <- mcmc[,,data[[paste0("..IDX", number)]],drop = FALSE]
  set_class(mcmc, "mcmcarray")
}
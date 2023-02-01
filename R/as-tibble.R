#' As Tibble
#' @param x An mcmc_data object to coerce to a tibble.
#' @param samples A flag specifying whether to include samples
#' @param ... Unused, for extensibility.
#' @export
as_tibble.mcmc_data <- function(x, samples = FALSE, ...) {
  chk_flag(samples)
  chk_unused(...)
  
  tibble <- dplyr::as_tibble(x$data)
  if(!samples) {
    return(tibble)
  }
  mcmc <- collapse_chains(x$mcmc) |>
    as.mcmc() |>
    as.matrix() |>
    t() |>
    as.data.frame()
  
  colnames <- paste0("n..", 1:ncol(mcmc))
  
  colnames(mcmc) <- colnames
  
  tibble |>
    dplyr::bind_cols(mcmc) |>
    tidyr::pivot_longer(all_of(colnames), names_to = ".sample") |>
    dplyr::mutate(.sample = stringr::str_replace(.data$.sample, "n\\.\\.", ""),
                  .sample = as.integer(.data$.sample))
}

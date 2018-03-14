#' @export
combine_samples_n.mcmc_data <- function(x, ..., fun = mean, by = NULL) {
  if(!length(list(...))) return(x)
  
  x <- c(list(x), list(...))

  datas <- lapply(x, as_tibble)
  
  datas <- mapply(FUN = add_IDX, datas, 1:length(datas), SIMPLIFY = FALSE)
  
  join <- function(x, y) dplyr::inner_join(x, y, by = by)
  
  data <- Reduce(join, datas)

  mcmcs <- lapply(x, as.mcmcarray)
  mcmcs <- mapply(FUN = filter_mcmcarray, mcmcs, 1:length(mcmcs), 
                  MoreArgs = list(data = data), SIMPLIFY = FALSE)
  
  mcmc <- combine_samples_n(mcmcs, fun = fun)
  data <- rm_IDX(data)
  data <- data[by]
  mcmc_data(mcmc, data)
}
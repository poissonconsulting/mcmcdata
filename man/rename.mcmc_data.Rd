% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rename.R
\name{rename.mcmc_data}
\alias{rename.mcmc_data}
\title{Rename mcmcr data}
\usage{
\method{rename}{mcmc_data}(.data, ...)
}
\arguments{
\item{.data}{An mcmc_data object}

\item{...}{For \code{rename()}: <\code{\link[dplyr:dplyr_tidy_select]{tidy-select}}> Use
\code{new_name = old_name} to rename selected variables.

For \code{rename_with()}: additional arguments passed onto \code{.fn}.}
}
\description{
Rename mcmcr data
}
\examples{
rename(mcmc_data_example, Spp = species)
}

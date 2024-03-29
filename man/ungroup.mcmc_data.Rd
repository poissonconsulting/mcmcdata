% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/group-by.R
\name{ungroup.mcmc_data}
\alias{ungroup.mcmc_data}
\title{Ungroup mcmc data}
\usage{
\method{ungroup}{mcmc_data}(x, ...)
}
\arguments{
\item{x}{An mcmc_data object}

\item{...}{In \code{group_by()}, variables or computations to group by.
Computations are always done on the ungrouped data frame.
To perform computations on the grouped data, you need to use
a separate \code{mutate()} step before the \code{group_by()}.
Computations are not allowed in \code{nest_by()}.
In \code{ungroup()}, variables to remove from the grouping.}
}
\description{
Ungroup mcmc data
}
\examples{
ungroup(mcmc_data_example)
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/replace-na.R
\name{replace_na.mcmc_data}
\alias{replace_na.mcmc_data}
\title{Replace Missing Values mcmc data}
\usage{
\method{replace_na}{mcmc_data}(data, replace, ...)
}
\arguments{
\item{data}{A data frame or vector.}

\item{replace}{If \code{data} is a data frame, \code{replace} takes a named list of
values, with one value for each column that has missing values to be
replaced. Each value in \code{replace} will be cast to the type of the column
in \code{data} that it being used as a replacement in.

If \code{data} is a vector, \code{replace} takes a single value. This single value
replaces all of the missing values in the vector. \code{replace} will be cast
to the type of \code{data}.}

\item{...}{Additional arguments for methods. Currently unused.}
}
\description{
Replace Missing Values mcmc data
}

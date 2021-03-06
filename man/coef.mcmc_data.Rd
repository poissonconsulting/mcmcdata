% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coef.R
\name{coef.mcmc_data}
\alias{coef.mcmc_data}
\title{Coefficients}
\usage{
\method{coef}{mcmc_data}(object, conf_level = 0.95, estimate = stats::median, ...)
}
\arguments{
\item{object}{The mcmc_data object to get the coefficent table for.}

\item{conf_level}{A probability specifying the confidence level.}

\item{estimate}{A function to calculate the point estimate.}

\item{...}{Unused}
}
\description{
Gets the coefficient table as a tibble.
}
\examples{
coef(mcmc_data_example)
}

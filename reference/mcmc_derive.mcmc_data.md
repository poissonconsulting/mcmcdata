# mcmc_derive mcmc_data

Gets mcmcr object of one or more derived parameters. To return an
mcmc_data object use mcmc_derive_data(). By default the current
parameter is call par.

## Usage

``` r
# S3 method for class 'mcmc_data'
mcmc_derive(
  object,
  expr = "new_par <- par",
  values = list(),
  parameter = "par",
  monitor = ".*",
  parallel = FALSE,
  silent = getOption("mcmcderive.silent", FALSE),
  ...
)
```

## Arguments

- object:

  An mcmc_data object

- expr:

  A string of the R expression.

- values:

  A named list of values for objects not in object\$data

- parameter:

  A string of the name of the current MCMC samples in expr.

- monitor:

  A regular expression specifying the derived parameter(s) in expr to
  monitor.

- parallel:

  A flag specifying whether to generate the derived parameters for each
  chain in parallel.

- silent:

  A flag specifying whether to suppress messages and warnings.

- ...:

  Unused.

## Value

An mcmcr object of the derived parameters.

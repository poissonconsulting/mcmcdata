# mcmc_derive mcmc_data

Gets mcmc_data object of a derived parameters. To return an mcmcr object
of one or more derived parameters use mcmc_derive(). By default the
current parameter is call par and the derived one is called new_par.

## Usage

``` r
# S3 method for class 'mcmc_data'
mcmc_derive_data(
  object,
  expr = "new_par <- par",
  values = list(),
  parameter = "par",
  monitor = "new_par",
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

  A string of the name of the derived parameter to return.

- parallel:

  A flag specifying whether to generate the derived parameters for each
  chain in parallel.

- silent:

  A flag specifying whether to suppress messages and warnings.

- ...:

  Unused.

## Value

An mcmc_data object.

# Check mcmc data

Checks an object is a `mcmc_data`.

## Usage

``` r
check_mcmc_data(x, x_name = NULL)
```

## Arguments

- x:

  The object to check.

- x_name:

  A string of the name of object x or NULL.

## Value

An invisible copy of x (if it doesn't throw an error).

## Examples

``` r
check_mcmc_data(mcmcdata::mcmc_data_example)
```

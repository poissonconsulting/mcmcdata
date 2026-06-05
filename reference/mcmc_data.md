# MCMC Data

Combines an mcmc object with a data frame. The mcmc object must be for a
single parameter of the same length as the number of rows in the data
frame. The resultant object can be filtered or summarized or the coef
calculated.

## Usage

``` r
mcmc_data(mcmc, data)
```

## Arguments

- mcmc:

  An mcmc object with one parameter

- data:

  A data frame

## Value

An object of class `mcmc_data`

# Summarise mcmc data

Summarise mcmc data

## Usage

``` r
# S3 method for class 'mcmc_data'
summarise(.data, ..., .fun = sum)
```

## Arguments

- .data:

  An mcmc_data object

- ...:

  \<[`data-masking`](https://rlang.r-lib.org/reference/args_data_masking.html)\>
  Name-value pairs of summary functions. The name will be the name of
  the variable in the result.

  The value can be:

  - A vector of length 1, e.g. `min(x)`, `n()`, or `sum(is.na(y))`.

  - A data frame, to add multiple columns from a single expression.

  **\[deprecated\]** Returning values with size 0 or \>1 was deprecated
  as of 1.1.0. Please use
  [`reframe()`](https://dplyr.tidyverse.org/reference/reframe.html) for
  this instead.

- .fun:

  The function to use to summarise the MCMC samples.

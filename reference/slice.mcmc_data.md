# Slice mcmcr data

Slice mcmcr data

## Usage

``` r
# S3 method for class 'mcmc_data'
slice(.data, ...)
```

## Arguments

- .data:

  An mcmc_data object

- ...:

  For [`slice()`](https://dplyr.tidyverse.org/reference/slice.html):
  \<[`data-masking`](https://rlang.r-lib.org/reference/args_data_masking.html)\>
  Integer row values.

  Provide either positive values to keep, or negative values to drop.
  The values provided must be either all positive or all negative.
  Indices beyond the number of rows in the input are silently ignored.

  For `slice_*()`, these arguments are passed on to methods.

## Examples

``` r
slice(mcmc_data_example, 1L)
#> $mcmc
#> [1] 3.718025
#> 
#> nchains:  2 
#> niters:  400 
#> 
#> $data
#> # A tibble: 1 × 3
#>   homeworld species films    
#>   <chr>     <chr>   <list>   
#> 1 Tatooine  Human   <chr [5]>
#> 
#> attr(,"class")
#> [1] "mcmc_data"
```

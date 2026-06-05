# Arrange mcmcr data

Arrange mcmcr data

## Usage

``` r
# S3 method for class 'mcmc_data'
arrange(.data, ...)
```

## Arguments

- .data:

  An mcmc_data object

- ...:

  \<[`data-masking`](https://rlang.r-lib.org/reference/args_data_masking.html)\>
  Variables, or functions of variables. Use
  [`desc()`](https://dplyr.tidyverse.org/reference/desc.html) to sort a
  variable in descending order.

## Examples

``` r
arrange(mcmc_data_example, species, homeworld)
#> $mcmc
#> [1] 4.718025 3.718025
#> 
#> nchains:  2 
#> niters:  400 
#> 
#> $data
#> # A tibble: 2 × 3
#>   homeworld species films    
#>   <chr>     <chr>   <list>   
#> 1 Tatooine  Droid   <chr [6]>
#> 2 Tatooine  Human   <chr [5]>
#> 
#> attr(,"class")
#> [1] "mcmc_data"
```

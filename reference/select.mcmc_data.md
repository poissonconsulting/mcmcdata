# Select mcmcr data

Select mcmcr data

## Usage

``` r
# S3 method for class 'mcmc_data'
select(.data, ...)
```

## Arguments

- .data:

  An mcmc_data object

- ...:

  \<[`tidy-select`](https://dplyr.tidyverse.org/reference/dplyr_tidy_select.html)\>
  One or more unquoted expressions separated by commas. Variable names
  can be used as if they were positions in the data frame, so
  expressions like `x:y` can be used to select a range of variables.

## Examples

``` r
select(mcmc_data_example, species, homeworld)
#> $mcmc
#> [1] 3.718025 4.718025
#> 
#> nchains:  2 
#> niters:  400 
#> 
#> $data
#> # A tibble: 2 × 2
#>   species homeworld
#>   <chr>   <chr>    
#> 1 Human   Tatooine 
#> 2 Droid   Tatooine 
#> 
#> attr(,"class")
#> [1] "mcmc_data"
```

# Mutate mcmc_data

Mutate mcmc_data

## Usage

``` r
# S3 method for class 'mcmc_data'
mutate(.data, ...)
```

## Arguments

- .data:

  An mcmc_data object

- ...:

  For [`rename()`](https://dplyr.tidyverse.org/reference/rename.html):
  \<[`tidy-select`](https://dplyr.tidyverse.org/reference/dplyr_tidy_select.html)\>
  Use `new_name = old_name` to rename selected variables.

  For `rename_with()`: additional arguments passed onto `.fn`.

## Examples

``` r
rename(mcmc_data_example, Spp = species)
#> $mcmc
#> [1] 3.718025 4.718025
#> 
#> nchains:  2 
#> niters:  400 
#> 
#> $data
#> # A tibble: 2 × 3
#>   homeworld Spp   films    
#>   <chr>     <chr> <list>   
#> 1 Tatooine  Human <chr [5]>
#> 2 Tatooine  Droid <chr [6]>
#> 
#> attr(,"class")
#> [1] "mcmc_data"
```

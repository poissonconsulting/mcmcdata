# Ungroup mcmc data

Ungroup mcmc data

## Usage

``` r
# S3 method for class 'mcmc_data'
ungroup(x, ...)
```

## Arguments

- x:

  An mcmc_data object

- ...:

  In
  [`group_by()`](https://dplyr.tidyverse.org/reference/group_by.html),
  variables or computations to group by. Computations are always done on
  the ungrouped data frame. To perform computations on the grouped data,
  you need to use a separate
  [`mutate()`](https://dplyr.tidyverse.org/reference/mutate.html) step
  before the
  [`group_by()`](https://dplyr.tidyverse.org/reference/group_by.html).
  Computations are not allowed in `nest_by()`. In
  [`ungroup()`](https://dplyr.tidyverse.org/reference/group_by.html),
  variables to remove from the grouping.

## Examples

``` r
ungroup(mcmc_data_example)
#> $mcmc
#> [1] 3.718025 4.718025
#> 
#> nchains:  2 
#> niters:  400 
#> 
#> $data
#> # A tibble: 2 × 3
#>   homeworld species films    
#>   <chr>     <chr>   <list>   
#> 1 Tatooine  Human   <chr [5]>
#> 2 Tatooine  Droid   <chr [6]>
#> 
#> attr(,"class")
#> [1] "mcmc_data"
```

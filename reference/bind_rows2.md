# Bind Rows

Bind Rows

## Usage

``` r
bind_rows2(x, y)
```

## Arguments

- x:

  A mcmc_data

- y:

  A second mcmc_data

## Examples

``` r
bind_rows2(mcmc_data_example, mcmc_data_example)
#> $mcmc
#> [1] 3.718025 4.718025 3.718025 4.718025
#> 
#> nchains:  2 
#> niters:  400 
#> 
#> $data
#> # A tibble: 4 × 3
#>   homeworld species films    
#>   <chr>     <chr>   <list>   
#> 1 Tatooine  Human   <chr [5]>
#> 2 Tatooine  Droid   <chr [6]>
#> 3 Tatooine  Human   <chr [5]>
#> 4 Tatooine  Droid   <chr [6]>
#> 
#> attr(,"class")
#> [1] "mcmc_data"
```

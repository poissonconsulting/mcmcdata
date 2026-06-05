# Coefficients

Gets the coefficient table as a tibble.

## Usage

``` r
# S3 method for class 'mcmc_data'
coef(object, conf_level = 0.95, estimate = stats::median, ...)
```

## Arguments

- object:

  The mcmc_data object to get the coefficent table for.

- conf_level:

  A probability specifying the confidence level.

- estimate:

  A function to calculate the point estimate.

- ...:

  Unused

## Examples

``` r
coef(mcmc_data_example)
#> # A tibble: 2 × 7
#>   homeworld species films     estimate lower upper svalue
#>   <chr>     <chr>   <list>       <dbl> <dbl> <dbl>  <dbl>
#> 1 Tatooine  Human   <chr [5]>     3.72  2.21  5.23   9.65
#> 2 Tatooine  Droid   <chr [6]>     4.72  3.21  6.23   9.65
```

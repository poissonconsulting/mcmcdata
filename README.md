
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/poissonconsulting/mcmcdata/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/poissonconsulting/mcmcdata/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/mcmcdata/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/mcmcdata?branch=master)
[![License:
MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
<!-- badges: end -->

# mcmcdata

## Introduction

`mcmcdata` is an R package to manipulate Monte Carlo Markov Chain
samples and data.

## Installation

To install the latest version from GitHub

    # install.packages("devtools")
    devtools::install_github("poissonconsulting/mcmcdata")

## Demonstration

``` r
library(mcmcdata)
#> 
#> Attaching package: 'mcmcdata'
#> The following object is masked from 'package:stats':
#> 
#>     filter

print(mcmc_data_example)
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

md_ex <- slice(mcmc_data_example, c(1,2,2))
print(md_ex)
#> $mcmc
#> [1] 3.718025 4.718025 4.718025
#> 
#> nchains:  2 
#> niters:  400 
#> 
#> $data
#> # A tibble: 3 × 3
#>   homeworld species films    
#>   <chr>     <chr>   <list>   
#> 1 Tatooine  Human   <chr [5]>
#> 2 Tatooine  Droid   <chr [6]>
#> 3 Tatooine  Droid   <chr [6]>
#> 
#> attr(,"class")
#> [1] "mcmc_data"
md_ex <- group_by(md_ex, homeworld, species)
coef(summarise(md_ex))
#> # A tibble: 2 × 6
#>   homeworld species estimate lower upper svalue
#>   <chr>     <chr>      <dbl> <dbl> <dbl>  <dbl>
#> 1 Tatooine  Droid       9.44  6.42 12.5    9.65
#> 2 Tatooine  Human       3.72  2.21  5.23   9.65
```

## Citation

    Warning in citation(package = "mcmcdata"): no date field in DESCRIPTION file of
    package 'mcmcdata'
    Warning in citation(package = "mcmcdata"): could not determine year for
    'mcmcdata' from package DESCRIPTION file

    To cite package 'mcmcdata' in publications use:

      Thorley J (????). _mcmcdata: Manipulate MCMC Samples and Data
      Frames_. R package version 0.0.1.9000.

    A BibTeX entry for LaTeX users is

      @Manual{,
        title = {mcmcdata: Manipulate MCMC Samples and Data Frames},
        author = {Joe Thorley},
        note = {R package version 0.0.1.9000},
      }

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/mcmcdata/issues).

[Pull requests](https://github.com/poissonconsulting/mcmcdata/pulls) are
always welcome.

## Code of Conduct

Please note that the mcmcdata project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

## Inspiration

- coda and rjags

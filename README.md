
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![stability-experimental](https://img.shields.io/badge/stability-experimental-orange.svg)](https://github.com/joethorley/stability-badges#experimental)
[![Travis-CI Build
Status](https://travis-ci.org/poissonconsulting/mcmcdata.svg?branch=master)](https://travis-ci.org/poissonconsulting/mcmcdata)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/poissonconsulting/mcmcdata?branch=master&svg=true)](https://ci.appveyor.com/project/poissonconsulting/mcmcdata)
[![Coverage
Status](https://img.shields.io/codecov/c/github/poissonconsulting/mcmcdata/master.svg)](https://codecov.io/github/poissonconsulting/mcmcdata?branch=master)
[![License:
MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

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
#> Loading required package: dplyr
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union

print(mcmc_data_example)
#> $mcmc
#> [1] 3.718025 4.718025
#> 
#> nchains:  2 
#> niters:  400 
#> 
#> $data
#> # A tibble: 2 x 3
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
#> # A tibble: 3 x 3
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
#> # A tibble: 2 x 8
#>   homeworld species estimate    sd zscore lower upper  pvalue
#>   <chr>     <chr>      <dbl> <dbl>  <dbl> <dbl> <dbl>   <dbl>
#> 1 Tatooine  Droid       9.44 1.80    5.26  6.42 12.5  0.00120
#> 2 Tatooine  Human       3.72 0.901   4.15  2.21  5.23 0.00120
```

## Citation

``` 

To cite package 'mcmcdata' in publications use:

  Joe Thorley (2018). mcmcdata: Manipulate MCMC Samples and Data
  Frames. R package version 0.0.0.9005.

A BibTeX entry for LaTeX users is

  @Manual{,
    title = {mcmcdata: Manipulate MCMC Samples and Data Frames},
    author = {Joe Thorley},
    year = {2018},
    note = {R package version 0.0.0.9005},
  }
```

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/mcmcdata/issues).

[Pull requests](https://github.com/poissonconsulting/mcmcdata/pulls) are
always welcome.

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms

## Inspiration

  - coda and rjags

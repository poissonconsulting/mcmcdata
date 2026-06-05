# Replace Missing Values mcmc data

Replace Missing Values mcmc data

## Usage

``` r
# S3 method for class 'mcmc_data'
replace_na(data, replace, ...)
```

## Arguments

- data:

  A data frame or vector.

- replace:

  If `data` is a data frame, `replace` takes a named list of values,
  with one value for each column that has missing values to be replaced.
  Each value in `replace` will be cast to the type of the column in
  `data` that it being used as a replacement in.

  If `data` is a vector, `replace` takes a single value. This single
  value replaces all of the missing values in the vector. `replace` will
  be cast to the type of `data`.

- ...:

  Additional arguments for methods. Currently unused.

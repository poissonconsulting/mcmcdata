roxygen2md::roxygen2md()
styler::style_pkg(filetype = c("R", "Rmd"))
lintr::lint_package()

devtools::test()
devtools::document()

pkgdown::build_site()

devtools::check()


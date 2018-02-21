error <- function(...) stop(..., call. = FALSE)

set_class <- function(x, class) {
  class(x) <- class
  x
}

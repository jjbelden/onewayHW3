#' @title summary.oneway
#'
#' @description Creates a summary of an
#' object of class "oneway"
#'
#' @param x
#' An object of class "oneway" and "list"
#' containing the results of a oneway analysis of variance
#' as well as summary statistics from the data used
#'
#' @param ...
#' additional arguments that may be passed to print()
#'
#' @export
#'
#' @return
#' returns an object of class "anova"
#' and "data.frame"
#'
#' @examples
#' results <- oneway(mpg ~ cyl, mtcars)
#' summary.oneway(results)


summary.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("x must  be class 'oneway'")
  print(anova(x$anova), ...)
}

print.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  cat("\nSummary Statistics\n",
      "====================================================\n", sep="")
  print(x$summarystats, ...)
  cat("\nAnova\n",
      "====================================================\n", sep="")
  print(summary.lm(x$anova), ...)
}


#' @title print.oneway
#'
#' @description Creates a boxplot
#' of an object of class "oneway"
#'
#' @param x
#' An object of class "oneway" and "list"
#' containing the results of a oneway analysis of variance
#' as well as summary statistics from the data used
#'
#' @param col
#' sets the color to fill the boxes.
#' If left unspecified it is "skyblue"
#'
#' @param ...
#' additional arguments that may be passed to print()
#'
#' @export
#'
#' @return
#' returns an object of class "summary.lm"
#'
#' @examples
#' library("onewayHW3")
#' results <- oneway(mpg ~ cyl, mtcars)
#' print.oneway(results)



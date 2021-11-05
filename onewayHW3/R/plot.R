
plot.oneway <- function(x, col="skyblue", ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  boxplot(x$anova$terms, x$anova$model, col = col, ...)
}



#' @title plot.oneway
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
#' additional arguments that may be passed to the boxplot function
#'
#' @export
#'
#' @return
#' returns an object of type "list"
#'
#' @examples
#' library("onewayHW3")
#' results <- oneway(mpg ~ cyl, mtcars)
#' plot.oneway(results, col = "green", ylab = "Miles Per Gallon")
#'



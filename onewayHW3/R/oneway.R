oneway <- function(formula, data) {

  # listwise deletion of missing values
  data_complete <- na.omit(data)

  # anova
  fit <- lm(formula, data_complete)

  stats <-  aggregate(formula,
                      data,
                      function(x) c(n = length(x), mean = mean(x), sd = sd(x)))


  result <- list(anova = fit, summarystats = stats)
  class(result) <- c("oneway", "list")
  return(result)

}



#' @title oneway
#'
#' @description Performs a oneway analysis of variance
#'
#'
#' @param formula
#' A formula describing the relationship to be tested
#' in the oneway analyis of variance
#'
#' @param data The dataset which will be drawn from
#'
#' @export
#'
#' @return
#' returns an object of type "oneway"
#' and type "list" which contains the results
#' of the oneway analysis of variance
#' as well as a summary of statistics used
#'
#' @examples
#' library("onewayHW3")
#' oneway(mpg ~ cyl, mtcars)





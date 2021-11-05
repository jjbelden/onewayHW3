# onewayHW3


![](oneway.jpg)

The goal of onewayHW3 is to build tools to
run oneway analyses of variance and explore 
the results

## Installation

You can install the development version of onewayHW3 like so:

``` r
if(!require("remotes")){
  install.packages("remotes")
  library("remotes")
}
install_github("jjbelden/onewayHW3")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(onewayHW3)
results <- oneway(mpg ~ cyl, mtcars)
plot.oneway(results)

```

# jbelden

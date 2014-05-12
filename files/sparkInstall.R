install.packages(c("devtools", "testthat"), repos="http://cran.rstudio.com/")
library("devtools")
install_github("amplab-extras/SparkR-pkg", subdir="pkg")
library("SparkR")

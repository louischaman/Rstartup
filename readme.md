Package made with info from

https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/

add the following to this:

"C:/Program Files/R/R-3.3.0/library/base/R/Rprofile"

old_wd = getwd()
setwd("C:/dev/R/startupPKG")
require(devtools)
document()
setwd(old_wd)
library(startupPKG)
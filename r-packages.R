local({
  r <- getOption("repos")
  r["CRAN"] <- "http://cran.cnr.berkeley.edu/"
  options(repos = r)
})
# 
install.packages(c("tidyverse",
                   "stringr",
                   "zoo",
                   "lfe",
                   "ggthemes",
                   "RcppRoll",
                   "rms",
                   "noncensus",
                   "maps",
                   "foreign",
                   "cowplot",
                   "systemfit",
                   "doParallel",
                   "boot",
                   "sandwich",
                   "lmtest",
                   "devtools",
                   "tigris"))

install.packages("udunits2",configure.args='--with-udunits2-include=/usr/include/udunits2')

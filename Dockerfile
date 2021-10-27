FROM rocker/tidyverse:latest


RUN R -e "install.packages(c('purrr', 'tidyverse'),
                           dependencies= T, 
                           repos= 'http://cran.rstudio.com/')"




FROM rocker/tidyverse:latest


RUN R -e "install.packages(c('purrr', 'tidyverse'),
                           dependencies=TRUE, 
                           repos='http://cran.rstudio.com/')"




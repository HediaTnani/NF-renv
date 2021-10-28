FROM rocker/tidyverse:latest


RUN R -e "install.packages(c('purrr', 'tidyverse', 'ashr'), dependencies= T, repos= 'http://cran.rstudio.com/')"

# Docker inheritance
FROM bioconductor/bioconductor_docker:latest

RUN apt-get update
RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install("DESeq2", ask = F)'


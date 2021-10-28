FROM rocker/tidyverse:latest

## update system libraries
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean
    
RUN R -e "install.packages(c('purrr', 'tidyverse', 'ashr'), dependencies= T, repos= 'http://cran.rstudio.com/')"


FROM bioconductor/bioconductor_docker:latest



RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install("DESeq2", ask = F)'


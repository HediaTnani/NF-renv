FROM rocker/tidyverse:latest
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libxml2-dev \
    libcairo2-dev \
    libsqlite3-dev \
    libmariadbd-dev \
    libpq-dev \
    libssh2-1-dev \
    unixodbc-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    coinor-libcbc-dev coinor-libclp-dev libglpk-dev


## update system libraries
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean
    
RUN R -e "install.packages(c('purrr', 'tidyverse', 'ashr'), dependencies= T, repos= 'http://cran.rstudio.com/')"


FROM bioconductor/bioconductor_docker:latest



RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install("DESeq2", ask = F)'


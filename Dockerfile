# Set the base image to Bioconductor docker RELEASE_3_12
FROM bioconductor/bioconductor_docker:latest

# File Author / Maintainer
MAINTAINER Hédia Tnani

# Default command to execute at startup of the container
CMD R --no-save

# Install DESeq2 
RUN R -e 'BiocManager::install(ask = F)' 
RUN R -e 'BiocManager::install("DESeq2")'
RUN R -e "install.packages(c('purrr', 'tidyverse', 'ashr'), repos= 'http://cran.rstudio.com/')"



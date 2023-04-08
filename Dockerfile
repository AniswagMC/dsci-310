FROM rocker/verse:4.2.2


# Install R and tidyverse
RUN apt-get update && \
    apt-get install -y r-base && \
    R -e "install.packages('tidyverse', repos = 'http://cran.us.r-project.org')"

# Install R packages 
RUN R -e "install.packages('remotes', repos='http://cran.rstudio.com/')"
RUN Rscript -e "remotes::install_version('broom', version ='1.0.3', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('GGally', version ='2.1.2', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('leaps', version ='3.1', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('glmnet', version ='4.1-6', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('testthat', version ='3.1.6', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('bookdown', version ='0.33', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('docopt', version ='0.7.1', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('here', version ='1.0.1', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('ggplotify', version ='0.1.0', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('rmarkdown', version ='2.13', repos = 'http://cran.us.r-project.org')"

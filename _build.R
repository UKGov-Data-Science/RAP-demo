#!/usr/bin/env Rscript

# Setup snapshot and install required packages

checkpoint::setSnapshot('2016-11-20')
install.packages('bookdown')
install.packages('DT')
devtools::install_github('UKGov-Data-Science/RAP-demo')

# Finally render book

bookdown::render_book('index.Rmd', 'bookdown::gitbook')
#Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

library(readxl)
library(shiny)
library(leaflet)
library(WDI)
library(tidyr)
library(dplyr)
library(xts)
library(dygraphs)
library(readr)

# Turn off scientific notation
options(scipen=999)

# Set up the data
# Generate a lookup table
# source: databank.worldbank.org/data/download/site-content/WDI_CETS.xls

xl <- "WDI_CETS.xls"

lookup <- read_excel(xl)
names(lookup) <- c("a", "b", "c", "d", "e", "f")

# Lookup variable names / descriptions
lookup_list  <- setNames(as.list(lookup$b), lookup$a)
lookup_list2 <- setNames(as.list(lookup$a), lookup$b)

# Lookup countries
cc <- read_csv("country_codes.csv", na="", 
               col_types = list(col_character(), col_character()))
lookup_list_countries  <- setNames(as.list(cc$iso_2c), cc$cname)
lookup_list_countryabb <- setNames(as.list(cc$cname), cc$iso_2c)

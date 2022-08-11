library(readxl)
library(shiny)
library(leaflet)
library(WDI)
library(tidyr)
library(dplyr)
library(xts)
library(dygraphs)
library(RColorBrewer)
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

## Get map data and merge to WDI data
# Set up the data
countries <- rgdal::readOGR("ne_50m_admin_0_countries/ne_50m_admin_0_countries.shp")

# Function to join data frame and spatial data
join_shapefile_to_df <- function(spatial_data, data_frame, by_sp, by_df)
{
  spatial_data@data <- data.frame(spatial_data@data, data_frame[match(spatial_data@data[[by_sp]], 
                                                                      data_frame[[by_df]]), ])
  spatial_data
}

# Function to grab WDI data and merge to the spatial data frame
merge_to_wdi <- function(indicator, year) {
    # Get WDI data
    dat <- WDI(country = "all",
             indicator = indicator,
             start = year,
             end = year)
    dat[[indicator]] <- round(dat[[indicator]], 1)
   # Join to map data
    countries2 <- join_shapefile_to_df(countries,
                         dat,
                         "iso_a2",
                         "iso2c")
  countries2
}

# Quantile Labels
# The leaflet package uses percentiles in its quantile legends; This function shows the actual values.

quantile_labels <- function (vec, n) 
{
  qs <- round(quantile(vec, seq(0, 1, 1/n), na.rm = TRUE), 
              1)
  len <- length(qs) - 1
  qlabs <- c()
  for (i in 1:len) {
    j <- i + 1
    v <- paste0(as.character(qs[i]), "-", as.character(qs[j]))
    qlabs <- c(qlabs, v)
  }
  final_labs <- c(qlabs, "Data unavailable")
  final_labs
}
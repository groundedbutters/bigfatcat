library(shiny)
library(dplyr)
library(dygraphs)

source('setup.R')

shinyUI(fluidPage(tabsetPanel(
  tabPanel(
    "Controls",
    selectInput(
      'indicator',
      'World Development Indicator',
      lookup_list2,
      selected = 'Fertility rate, total (births per woman)'
    ),
    selectInput(
      "ctry",
      label = "Country",
      lookup_list_countries,
      selected = "US"
    )
  ),
  
  tabPanel(
    "Chart",
    p("Select a country for an interactive chart"),
    dygraphOutput("dchart", width = "100%")
  )
)))
library(shiny)
library(leaflet)
library(RColorBrewer)
library(dplyr)
library(dygraphs)

source('setup.R')

# Set up color scale for map
brewer_df <- brewer.pal.info
brewer_df$colors <- row.names(brewer_df)
sub <- dplyr::filter(brewer_df, category == "div" | category == "seq")
color_picker <- sub$colors

shinyUI(
  fluidPage(
    # Including an overall css style sheet
    tags$head(includeCSS("styles.css")),
    # Our fullscreen part of the UI for the map
    fixedPanel(id = "fullscreen",
               top = 0, left = 0, 
               width = "100%", height = "100%", 
              # Here is the map output in the UI
               leafletOutput("wdimap", 
                    width = "100%", height = "100%")
    ), 
    # And the tabbed part with the inputs and plot
    absolutePanel(id = "controls", 
                  draggable = TRUE, 
                  top = 10, right = 10, 
                  width = 500, height = "auto",
        h4("World Development Indicators explorer"),
    tabsetPanel(
    # The input choices
      tabPanel("Controls", 
               selectInput('indicator', 
                           'World Development Indicator', 
                           lookup_list2, 
                           selected = 'AG.LND.AGRI.ZS'), 
               numericInput("year", 
                            label = "Year", 
                            value = 2012, 
                            min = 1980, 
                            max = 2013), 
               selectInput("colors", label = "ColorBrewer palette", 
                           choices = color_picker, 
                           selected = "Blues")), 
               
      tabPanel("Chart", 
               p("Click a country on the map for an interactive chart"),
              # And the line plot output
               dygraphOutput("dchart", width = "100%"))
  ))
)
)
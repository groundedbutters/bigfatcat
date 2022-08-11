library(shiny)
library(WDI)
library(tidyr)
library(dplyr)
library(xts)
library(dygraphs)

source('setup.R')

shinyServer(function(input, output, session) {
  output$dchart <- renderDygraph({
    ind <- input$indicator
    
    df <-
      WDI(
        country = input$ctry,
        indicator = ind,
        start = 1980,
        end = 2016,
        extra = FALSE
      )
    
    df1 <- df %>%
      as_data_frame() %>%
      dplyr::select("country", "year", ind) %>%
      tidyr::spread(data = ., key = "country", value = ind) %>%
      dplyr::mutate(date = as.Date(as.character(year), format = "%Y")) %>%
      dplyr::select(-year)
    
    xtdata <- xts(df1, order.by = df1$date)
    
    xtdata$date <- NULL
    
    dygraph(xtdata) %>%
      dyOptions(colors = c("black", "black"))
    
  })
  
})

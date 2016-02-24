library(shiny)
library(plotly)

data <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/2011_us_ag_exports.csv")

shinyUI(fluidPage(
  # Create a title
  titlePanel("Export map"),
  
  # Create sidebar layout
  sidebarLayout(
     
     # Side panel for controls
     sidebarPanel("HEllo",
        # Input to select variable to map
        selectInput('export', h3("Variable to map:"),
                    choices = colnames(data)[-(1:4)],
                    selected = 'beef')
     ),
     
     # Main panel: display plotly map
     mainPanel(plotlyOutput('map'))
    
  )))
    
    
      
    
    
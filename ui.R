library(shiny)

shinyUI(
  pageWithSidebar( 
    headerPanel("AlephDataScience!"),
    sidebarPanel(
      sliderInput("obs", 
                  "Número de observaciones:", 
                  min = 100,
                  max = 500, 
                  value = 250)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
)
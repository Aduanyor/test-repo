library(shiny)

shinyServer(
  function(input, output, session) {
    autoInvalidate <- reactiveTimer(100, session)
    output$distPlot <- renderPlot({
      autoInvalidate()
      # generate an rnorm distribution and plot it
      dist <- rnorm(input$obs)
      plot(dist)
    })
    
  }
)
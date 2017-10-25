#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a graph
shinyServer(function(input, output) {
   
  output$plot1 <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- input$minX:input$maxX
    y<- (input$slope*x)+input$`Y-Intercept`
    
    # draw the histogram with the specified number of bins
    plot(x,y,title(main = "Plot of the Function", xlab = "X",ylab= "Y"),type = "p")
    
  })
  
})

#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


# slope is defined by adjusting the slope slider
# y intercept is defined by adjusting the y intercept slider
# x minimum bound is set by enterind desired bound in text box
# x maximum bound is set by enterind desired bound in text box
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Linear Function Plotter"),
  h2("adjust sliders, and enter desired x-range into text boxes"),
  h3("be sure to check that the text boxes aren't empty!"),
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("slope",
                   "Set the slope:",
                   min = -100,
                   max = 100,
                   value = 30),
       sliderInput("Y-Intercept",
                   "Set Y intercept:",
                   min=-100,
                   max=100,
                   value = 0),
       textInput("minX",
                 "set the minimum X value",
                 "-10"),
       textInput("maxX",
                 "set the Maximum X value",
                 "10")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("plot1")
    )
  )
))

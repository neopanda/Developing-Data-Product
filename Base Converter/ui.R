
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
# This application can convert two inputs into binary, octal, decimal or
# hexadecimal outputs.
# @author: neopanda
#

#Import library
library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Base Converter"),
    
    #Summary
    p("You can convert your values into binary, octal, decimal or hexadecimal."),
    p("Repository here: ",
      a("https://github.com/neopanda/Developing-Data-Product",
        href = "https://github.com/neopanda/Developing-Data-Product")
      ),
    
    #Input panel
    fluidRow(
        
        #Input 1
        column(6,
           wellPanel(
            h3("Input #1"),
            selectInput("baseI1", "Select your input base", c("Bin", "Oct", "Dec", "Hex")),
            textInput("input1", "Enter here:"),
            selectInput("baseO1", "Select your output base", c("Bin", "Oct", "Dec", "Hex"))
           )
        ),
        
        #Input 2
        column(6,
           wellPanel(
                h3("Input #2"),
                selectInput("baseI2", "Select your input base", c("Bin", "Dec", "Hex", "ASCII")),
                textInput("input2", "Enter here:"),
                selectInput("baseO2", "Select your output base", c("Bin", "Dec", "Hex", "ASCII"))
           )
        )
    ),
    
    #Output panel
    fluidRow(
        
        #Output 1
        column(6, 
            wellPanel(
                h3("Output #1"),
                verbatimTextOutput('output1')
            )
        ),
        
        #Output 2
        column(6, 
           wellPanel(
               h3("Output #2"),
               verbatimTextOutput('output2')
           )
        )
    )
))

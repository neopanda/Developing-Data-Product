
# This is the server logic for a Shiny web application.
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
library(R.utils)

shinyServer(function(input, output) {

    #Converting function
    convert <- function(input, baseIn, baseOut){
        if(baseIn == "Bin"){
            if (baseOut == "Oct"){
                intToOct(strtoi(input, 2L))
            }
            else if (baseOut == "Dec"){
                strtoi(input, 2L)
            }
            else if (baseOut == "Hex"){
                intToHex(strtoi(input, 2L))
            }
            else{
                intToBin(strtoi(input, 2L))
            }
        }
        else if (baseIn == "Oct"){
            if (baseOut == "Bin"){
                intToBin(strtoi(input, 8L))
            }
            else if (baseOut == "Dec"){
                strtoi(input, 8L)
            }
            else if (baseOut == "Hex"){
                intToHex(strtoi(input, 8L))
            }
            else{
                intToOct(strtoi(input, 8L))
            }
        }
        else if (baseIn == "Dec"){
            if(is.integer(as.integer(input))){
                if (baseOut == "Bin"){
                    intToBin(input)
                }
                else if (baseOut == "Oct"){
                    intToOct(input)
                }
                else if (baseOut == "Hex"){
                    intToHex(input)
                }
                else{
                    input
                }
            }
            else{
                "NA"
            }
        }
        else if (baseIn == "Hex"){
            if (baseOut == "Bin"){
                intToBin(strtoi(input, 16L))
            }
            else if (baseOut == "Oct"){
                intToOct(strtoi(input, 16L))
            }
            else if (baseOut == "Dec"){
                strtoi(input, 16L)
            }
            else{
                intToHex(strtoi(input, 16L))
            }
        }
    }
    
    #Convert output 1
    output$output1 <- renderText({
        convert(input$input1, input$baseI1, input$baseO1)
    })
    
    #Convert output 2
    output$output2 <- renderText({
        convert(input$input2, input$baseI2, input$baseO2)
    })
    
})

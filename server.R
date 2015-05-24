# server.R file

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    #Make a histogram of Old Faithful data in R
    output$distPlot <- renderPlot({
        x    <- faithful[, 2]  
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        
        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = input$plotColor, border = 'white',
             main = 'Old Faithful Eruptions',
             xlab = 'Duration Between Eruptions (minutes)',
             xlim = c(40,100))
    })
})
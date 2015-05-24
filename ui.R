# ui.R file

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Developing Data Products Project"),
    
    # Sidebar with a slider input for the number of bins
    sidebarLayout(
        sidebarPanel(
            h3("Trevor McCalmont"),
            h4("Saturday May 23, 2015"),
            p("Based off the Shiny RStudio tutorial"),
            
            sliderInput("bins",
                        "Number of bins:",
                        min = 5,
                        max = 50,
                        value = 30),
            
            radioButtons("plotColor",
                         label = h3("Color of the plot:"),
                         choices = list("Red" = "red",
                                        "Blue" = "blue",
                                        "Green" = "darkgreen",
                                        "Black" = "black"),
                         selected = "Green")
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            h3("Documentation"),
            p("This Shiny application Creates a histogram of
              Old Faithful geyser eruptions using the 'faithful'
              data in R. The user may select the number of bins
              for the histogram, as well as change the color
              of the plot.")
        )
    )
))
library(datasets)
data(iris)
shinyServer(
        function(input, output) {
                output$value <- renderPrint({input$checkGroup})
        }
)
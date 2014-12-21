
shinyUI(fluidPage(
        titlePanel("Basic Sepal Width exploration in the Iris Dataset"),
        p("Documentation: README file for my app",a("Shiny",href="README.html")),
        
        sidebarLayout(position = "left",
                sidebarPanel(
                checkboxGroupInput("checkGroup", label = "Choose the Sepal Width data point you want to see:",
                                   choices = list("Min Sepal Width" = min(iris$Sepal.Width),
                                     "Max Sepal Width" = max(iris$Sepal.Width),
                                     "Median Sepal Width" = median(iris$Sepal.Width),
                                     "Average Sepal Width" = round(mean(iris$Sepal.Width),3)))
        ),
        mainPanel(
                verbatimTextOutput("value")
        )
)))
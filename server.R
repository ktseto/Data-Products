library(shiny)
library(ggplot2)
data(mtcars)

mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.factor(mtcars$vs)
mtcars$am <- as.factor(mtcars$am)
mtcars$gear <- as.factor(mtcars$gear)
mtcars$carb <- as.factor(mtcars$carb)

shinyServer(
  function(input, output) {
    output$mpgPlot<-reactivePlot(function() {
        g<-ggplot(mtcars, aes_string(x=input$predictor, y="mpg")) + labs(x=input$predictor, y="mpg")
        if (input$plottype=="box") {
          g<-g + geom_boxplot()
        } else {
          g<-g + geom_line()
        }
        print(g)
    })
  }
)
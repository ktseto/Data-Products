library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Exploratory Data Analysis with mtcars"),
  sidebarPanel(
    helpText("This application performs a plot of a predictor against miles per gallon.  You can use it for exploratory data analysis of the R dataset mtcars, which comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models)."),
    helpText("To use this app, first select a predictor to plot against mpg:"),
    radioButtons("predictor", "Predictor:", c("Number of cylinders" = "cyl", "Displacement (cu.in.)" = "disp", "Gross horsepower" = "hp", "Rear axle ratio" = "drat", "Weight (lb/1000)" = "wt", "1/4 mile time" = "qsec", "V/S" = "vs", "Transmission (0 = automatic, 1 = manual)" = "am", "Number of forward gears" = "gear", "Number of carburetors" = "carb")),
    helpText("Then select a type of plot:"),
    radioButtons("plottype", "Plot Type:", c("Box" = "box", "Line" = "line"))
  ),
  mainPanel(
    plotOutput("mpgPlot")
  )
))
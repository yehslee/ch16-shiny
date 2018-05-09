# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(
  h1("MPG Dataset"),
  
  selectInput("xvar", label = "X Variable", choices = select_values),
  
  selectInput("yvar", label = "Y Variable", choices = select_values),
  
  sliderInput("size", label = h3("Slider"), 1, 100, 10),
  
  selectInput("color", label = "Color", choices = c("blue", "green")),
  plotOutput("scatter")
 )

shinyUI(ui)

  # A page header

  
  # Add a select input for the x variable

  
  # Add a select input for the y variable


  # Add a sliderInput to set the size of each point


  # Add a selectInput that allows you to select a color from a list of choices



  # Plot the output with the name "scatter"


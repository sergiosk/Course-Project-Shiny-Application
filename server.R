library(shiny)
library(ggplot2)


shinyServer(function(input, output) {

  # a large table, reative to input$show_vars
  output$mytable1 = renderDataTable({
    library(ggplot2)
    diamonds[, input$show_vars, drop = FALSE]
 
  disp_seq <- seq(from = input$carat[1], to = input$carat[2], by = 0.1)
    hp_seq <- seq(from = input$depth[1], to = input$depth[2], by = 1)

data <- transmute(diamonds, Diamond= carat, DiamondDepth = depth, 
                       DiamondClarity=clarity,DiamondPrice=price,DiamondCut=cut,DiamondColor=color)


 data <- filter(data, DiamondPrice <= input$price,

                 DiamondClarity  %in% input$clarity,DiamondCut  %in% input$cut )


data

  })
 })

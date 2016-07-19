library(shiny)

shinyUI(navbarPage("Select the appropriate diamond",
                   tabPanel("Home",
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
   
	sliderInput("carat", "Carat",  value = c(2,5),  min = 0.2,  max = 5, step=0.1),
	sliderInput("depth","Define depth:",value=c(2, 5),min=10,max=80, step=0.1),
	numericInput("price", "Select maximum price:", 600),
radioButtons("cut","Cut:",c("Fair","Good","Very Good","Premium","Ideal")),	
radioButtons("clarity","Clarity:",c("I1","SI2","SI1","VS2","VS1","VVS2","VVS1","IF"))
                
 
            
                
               
                
 

 ),
                                mainPanel(
                                  dataTableOutput('mytable1')
                                )
                              )
                   ),
                   tabPanel("About",
                            mainPanel(
                                includeMarkdown("info.md")
                            )
                   )
      ))   
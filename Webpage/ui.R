
library(shiny)

shinyUI(
    
    fluidPage(

    # Application title
    headerPanel("Andreas Kooi", windowTitle = "Kooi Analytics"),
    tabsetPanel(
        selected = "About",
        tabPanel("Projects & Work", 
                 
                 column(3,
                 wellPanel(
                     radioButtons("sort", h3("Sort By"),
                                  choices = list("Most recent", "Name")
                                  ),
                     checkboxGroupInput("filter", h3("Filter"),
                                        choices = list("UC Santa Cruz", "Cal Poly SLO MSBA", "Independent"),
                                        selected = list("UC Santa Cruz", "Cal Poly SLO MSBA", "Independent")
                                        )
                     
                 )
                 ),
                 
                 column(9, "contents"),
                 

                 
                 
                 ),
        
        tabPanel("Resume", "contents"),
        tabPanel("About", 
                 
                 h1("My Shiny App"),
                 p(style = "font-family:Impact",
                   "See other apps in the",
                   a(href = "www.roblox.com", "Shiny Showcase"),
                   
                   img(height=100,width=100,src="http://www.rstudio.com/
        images/RStudio.2x.png")
                 )
                 
                 ),
        navbarMenu(title = "More",
                   tabPanel("Contact Me", "contents"),
                   tabPanel("What People Say", "contents"))
    ),
    



    )
)


library(shiny)

shinyUI(
    
    fluidPage(

    # Application title
    fluidRow(img(height="100%",width="100%",src="DSC03118-2.jpg")),
    
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
                 
                 column(9, 
                        
                        
                        


                 
                 
                 ),
        
        tabPanel("Resume", value = "A",
           
                 downloadButton("resume"),
                 column(6,
                 uiOutput("pdfview"))
                 ),
        
        tabPanel("About", 
                 
                 column(4, 
                        img(height="100%",width="100%",src="portrait.png"),
                        a(href = "https://www.linkedin.com/in/andreas-kooi-2049201a2/", "LinkedIn")
                 ),
        
                column(4,
                       p( "Hi there! I am studying Applied Physics at UC Santa Cruz. Currently I am writing my senior literature review paper on Quantum Annealing and I am
                       auditing a graduate class on statistical learning in higher dimensions.
                       In the Fall I will be attending Cal Poly SLO as a part of their Master's in Business Analytics program. I am interested
                       in using data to provide practical insights for businesses. Aside from my professional work I enjoy cycling, yoga, 
                          photography, and playing guitar."
                      #    a(href = "https://youtu.be/f74XJ5lTO6Q", "making videos"),
                      # "and",
                      #     a(href = "https://andreaskooi.bandcamp.com/", "creating music."),
                         )
                 ),
                

        ),
        navbarMenu(title = "More",
                   tabPanel("Contact Me", "contents"),
                   tabPanel("What People Say", "contents"))
    ),
    



    )
)

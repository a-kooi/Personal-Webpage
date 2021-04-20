
library(shiny)
library(readxl)
library(DT)

portfolio = read_excel("www/PortfolioData.xlsx")
portfolio = data.frame(portfolio)
portfolio$Date = as.Date(portfolio$Date,format='%m/%d/%Y')
portfolio = portfolio[rev(order(portfolio$Date)),]


shinyUI(
    
    fluidPage(

    fluidRow(
        img(height="100%",width="100%",src="DSC03118-2.jpg"),
        column(10),
        div("Last updated ", Sys.Date(), style = "font-size:10px;")
        ),
    
    titlePanel("Andreas Kooi", windowTitle = "Andreas Kooi"),
    tabsetPanel(
        selected = "About",
        tabPanel("Portfolio", 
                 # Might use this in the future ==============================================
                 #column(3,
                 #wellPanel(
                 #    radioButtons("sort", h3("Sort By"),
                 #                 choices = list("Most recent", "Name")
                 #                 ),
                 #    checkboxGroupInput("filter", h3("Filter"),
                 #                       choices = list("UC Santa Cruz", "Cal Poly SLO MSBA", "Independent"),
                 #                       selected = list("UC Santa Cruz", "Cal Poly SLO MSBA", "Independent")
                 #                       )
                 #)
                 #),
                 #==============================================================================
                 
                column(10,
                datatable(portfolio, filter = 'bottom',escape=F,rownames=F,options=list(lengthChange=F))
                )
                 
        ),
                
        
        tabPanel("Resume", 
                 column(8, 
                        img(height="100%",width="100%",src="kooi_resume.jpg")),
                 downloadButton("resume", "Download PDF")
        ),

        tabPanel("About", 
                 
                 fluidRow(
                 column(5, 
                        img(height="100%",width="100%",src="portrait.png")
                        #a(actionButton(inputId = "email", label = "Email", 
                        #               icon = icon("envelope")),
                        #  href="mailto:aggkooi@gmail.com")
                 ),
                 
                 column(6, 
                        p( "Hi there! I am a 22 year old student studying Applied Physics at UC Santa Cruz. Currently I am writing my senior literature review paper on Quantum Annealing and I am
                       auditing a graduate class on statistical learning in higher dimensions. I am also working on a few independent projects and self-learning some data-science tools.
                       In the fall I will be attending Cal Poly SLO as a part of their Master's in Business Analytics program. I am interested
                       in using data to provide practical insights for businesses. I value problem solving, obtaining results, and innovation. Aside from my professional work I enjoy cycling, yoga, 
                          photography, and playing guitar."),
                        p(a(href = "https://www.linkedin.com/in/andreas-kooi-2049201a2/", target="_blank", rel="noopener noreferrer", "LinkedIn")),
                        a(href = "mailto:aggkooi@gmail.com", target="_blank", rel="noopener noreferrer", "Email")
                 )
                 ),
                 )
        )
        )
        )
        # Future Use ========================================
        #navbarMenu(title = "More",
        #           tabPanel("Contact Me", "contents"),
        #           tabPanel("What People Say", "contents"))
        #====================================================
    


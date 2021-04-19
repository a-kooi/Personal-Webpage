
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$resume <- downloadHandler(
        filename = "kooi_resume.pdf",
        content = function(file) {
            file.copy("www/kooi_resume.pdf", file)
        }
    )

    output$pdfview <- renderUI({
        test <- tags$iframe(style="height:600px; width:100%", src="kooi_resume.pdf")
        print(test)
    
    })
    })
    

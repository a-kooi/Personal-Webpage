
library(shiny)
library(sendmailR)

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
    
    observe({
        if(is.null(input$send) || input$send==0) return(NULL)
        from <- isolate(input$from)
        to <- "aggkooi@gmail.com"
        subject <- isolate(input$subject)
        msg <- isolate(input$message)
        send.mail(from, to, subject, msg)
        
    })
}
)
    

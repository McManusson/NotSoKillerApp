# Server.R
function(input, output, session) {
  options(shiny.maxRequestSize=30*1024^2)
  library(shinyjs)
  library(shinyFiles)
  library(shiny)
  library(pdftools)
  library(tesseract)
  library(stringr)
  library(dplyr)
  
  observeEvent(input$file, {
    
  })
  
  observeEvent(input$welcome, {
    updateTabsetPanel(session, "inTabset",
                      selected = "second_page")
    print("miscojones")
  })
  observeEvent(input$preview, {
    path = input$file["datapath"]
    if(input$option == "Scan") {
      output = ocr_data(path)
      output$prev$iew = verbatimTextOutput(output[1:10,])
      
    } else if(input$option == "Computer") {
      output_c = pdf_text(path)
      output$preview = verbatimTextOutput(output[1])
    } else {
      output$preview = renderUI(HTML("<strong>No preview available</strong>"))
    }
  })
}

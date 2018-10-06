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
  observeEvent(input$preview, {
    path = input$file["datapath"]
    if(input$option == "scan") {
      output_s = ocr_data(path)
      output$preview = verbatimTextOutput(output[1:10,])
      
    } else if(input$option == "scan") {
      output_c = pdf_text(path)
      output$preview = verbatimTextOutput(output[1])
    } else {
      output$preview = renderUI(HTML("<strong>No preview available</strong>"))
    }
  })
}
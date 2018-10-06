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
    browser()
    path = input$file["datapath"]
    if(input$option == "scan") {
      output_s = ocr_data(path)
    } else {
      output_c = pdf_text(path)
    }
    if(exists(output_s)) {
      output$preview = verbatimTextOutput(output[1:10,])
    } else if(exists(output_c)) {
      output$preview = verbatimTextOutput(output[1])
    } else {
      output$preview = renderUI(HTML("<strong>No preview available</strong>"))
    }
  })
}
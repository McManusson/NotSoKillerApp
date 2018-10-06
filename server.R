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
    if(input$option == "scan") {
      output_s = ocr_data(input$file)
    } else {
      output_c = pdf_text(input$file)
    }
  })
  observeEvent(input$preview, {
    if(exists(output_s)) {
      output$preview = verbatimTextOutput(output[1:10,])
    } else if(exists(output_c)) {
      output$preview = verbatimTextOutput(output[1])
    } else {
      output$preview = renderUI(HTML("<strong>No preview available</strong>"))
    }
  })
}
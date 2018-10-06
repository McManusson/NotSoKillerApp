function(input, output) {
  library(shinyjs)
  library(shinyFiles)
  library(shiny)
  library(pdftools)
  library(tesseract)
  library(stringr)
  library(dplyr)
  observeEvent(input$upload, {
    if(input$option == "scan") {
      output_s = ocr_data(file)
    } else {
      output_c = pdf_text(file)
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
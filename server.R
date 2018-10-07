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
  library(tools)
  observeEvent(input$file, {
    if(dir.exists(input$file)) {
      output$check = renderUI({HTML("OK")})
    } else {
      output$check = renderUI({HTML("KO")})
    }
  if(dir.exists(input$file) && length(list.files(input$file, pattern="\\.pdf")) >= 1) {
    output$choosy = renderUI({selectInput("choosy", "Select your PDF file", choices=list.files(input$file, pattern = "\\.pdf"))
    })
    } else {
      output$choosy = renderUI({strong("No PDF files available")})
    }
  })
  
  observeEvent(input$welcome, {
    updateTabsetPanel(session, "inTabset",
                      selected = "second_page")
    print("miscojones")
  })
  observeEvent(input$preview, {
    path = paste0(input$file, "/", input$choosy)
      output = pdf_text(path)
      output$preview = renderUI({verbatimTextOutput(cat(output[1]))})
  })
}

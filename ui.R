# UI
ui <- fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),
  tags$header("Upload app"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file", "Choose file",
                multiple = FALSE,
                accept = c("text/pdf",
                           "text/comma-separated-values,text/plain",
                           ".pdf", ".jpg", ".png")),
      radioButtons("option", NULL,
                  c("Scan", "Computer")),
      actionButton("preview", "Preview!")
    ),
    mainPanel(uiOutput("preview"))
  )
)
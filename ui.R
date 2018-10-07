# UI
ui <- fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),
    tabsetPanel(id = "inTabset",
      tabPanel("Inicio",
                 column(
                   12, align = 'center',
                   h1("Personal Hunters", class="Title"),
                   h2("Use your skills to find your dream job", class="Title2"),
                   img(class="Imagen_fondo", src = "./img/shutterstock.jpg"),
                   h4('Web Application'),h2('Welcome', style = 'color: black;'),
                   actionButton('welcome','Start', style = 'color:white; background:#FE0000; border:#FE0000', width = 120,  align = 'center' ))
               ),
              #  fluidRow(column(12,
              # #includeHTML("./www/index.html")
              #     )
              #   )
              #  ),
      tabPanel("second_page", verbatimTextOutput("summary"),
               sidebarLayout(
                 sidebarPanel(
                   h2("Insert your Academic transcrips"),
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
               
               ),
      tabPanel("", tableOutput("table")
               
               
               
               )
    )


)


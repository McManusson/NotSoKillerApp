# UI
ui <- fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),
    tabsetPanel(
      tabPanel("",
               # 
               #   column(
               #     12, align = 'center', 
               #     h1("Personal Hunters"), 
               #     img( src = "Banco_Santander_Logotipo.png"), 
               #     h4('Actinio Application'),h2('Welcome', style = 'color: black;'), 
               #     actionButton('welcome','Login', style = 'color:white; background:#FE0000; border:#FE0000', width = 120,  align = 'center' ))
               # )
               fluidRow(column(12,
               includeHTML("./www/index.html")
                  )
                )
               ),
      tabPanel("", verbatimTextOutput("summary"),
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
               
               ),
      tabPanel("", tableOutput("table")
               
               
               
               )
    )


)


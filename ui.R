# UI
ui <- fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),
<<<<<<< HEAD
    tabsetPanel(id = "inTabset",
      tabPanel("Inicio",
               fluidRow(column(12,
                  tags$div(class = "header", checked = NA,
                  tags$p("Inicio", class="Menuatr"),
                  tags$p("Empresa", class="Menuatr"),
                  tags$p("Servicios", class="Menuatr"),
                  tags$p("Contacto", class="Menuatr")
               )
               )
               ),
                 column(
                   12, align = 'center',
                   h1("Personal Hunters", class="Title"),
                   h2("Use your skills to find your dream job", class="Title2"),
                   img(class="Imagen_fondo", src = "./img/empleo.jpg"),
                   h4('Web Application'),h2('Welcome', style = 'color: black;'),
                   actionButton('welcome','Start', style = 'margin-bottom: 5%;color:white; background:#FE0000; border:#FE0000', width = 120,  align = 'center' )
                   ),
               tags$div(class = "Howitworks", checked = NA,
                        fluidRow(
                          h1(class="tituloHow","How it works:"),
                          column(3,
                                 tags$span(class = "fa-stack",
                                           icon("upload",
                                                "fa-stack-2x", 
                                                lib = "font-awesome")
                                 ),
                                 p("Upload your academic transcripts to our platform",class="classtitleHow")
                          ),
                          column(3,
                                 tags$span(class = "fa-stack",
                                           icon("refresh ",
                                                "fa-stack-2x", 
                                                lib = "font-awesome")
                                 ),
                                 p("Our algorithm will transform your grades to certain skills",class="classtitleHow")
                          ),
                          column(3,
                                 tags$span(class = "fa-stack",
                                           icon("male",
                                                "fa-stack-2x", 
                                                lib = "font-awesome")
                                 ),

                                p("Professionals or Human Resources who worked with you will evaluate your skills",class="classtitleHow")
                          ),
                          column(3,
                                 tags$span(class = "fa-stack",
                                           icon("trophy",
                                                "fa-stack-2x", 
                                                lib = "font-awesome")
                                 ),
                                 p("Hunters objective’s  software will match your skills with job descriptions",class="classtitleHow")
                          )
                          
                          
                        )
               ) ,   
               h1(class="tituloHow2","Be visible through your skills to the people who recruits person like you"),
               
               fluidRow(
                 column(3,
                        img(class="Imagen_peq", src = "./img/1.jpg"),
                        h4("Low turnover",class="classtitle"),
                        p(class="classtext","Our solution provides to your Company more stability.")
                 ),
                 column(3,
                        img(class="Imagen_peq", src = "./img/2.jpg"),
                        h4("High Company profits",class="classtitle"),
                        p(class="classtext","The average time to fill a vacant is around 2 months in the meantime the position is not occupied affecting profitability.")
                 ),
                 column(3,
                        img(class="Imagen_peq", src = "./img/3.jpg"),
                        h4("Maintain the knowledge",class="classtitle"),
                        p(class="classtext","High rotation rates affect running projects and the development of the new ones.")
                 ),
                 column(3,
                        img(class="Imagen_peq", src = "./img/4.jpg"),
                        h4("Create a semi-static work environment",class="classtitle"),
                        p(class="classtext","Having a happy and solid team keep company long run strategy.")
                 )
                 
                 
               )
      )
               ,

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
    
=======
  tabsetPanel(id = "inTabset",
              tabPanel("Inicio",
                       fluidRow(column(12,
                                       tags$div(class = "header", checked = NA,
                                                tags$p("Inicio", class="Menuatr"),
                                                tags$p("Empresa", class="Menuatr"),
                                                tags$p("Servicios", class="Menuatr"),
                                                tags$p("Contacto", class="Menuatr")
                                       )
                       )
                       ),
                       column(
                         12, align = 'center',
                         h1("Personal Hunters", class="Title"),
                         h2("Use your skills to find your dream job", class="Title2"),
                         img(class="Imagen_fondo", src = "./img/empleo.jpg"),
                         h4('Web Application'),h2('Welcome', style = 'color: black;'),
                         actionButton('welcome','Start', style = 'margin-bottom: 5%;color:white; background:#FE0000; border:#FE0000', width = 120,  align = 'center' )
                       ),
                       fluidRow(
                         column(3,
                                img(class="Imagen_peq", src = "./img/1.jpg"),
                                h4("Low turnover",class="classtitle"),
                                p(class="classtext","Our solution provides to your Company more stability.")
                         ),
                         column(3,
                                img(class="Imagen_peq", src = "./img/2.jpg"),
                                h4("High Company profits",class="classtitle"),
                                p(class="classtext","The average time to fill a vacant is around 2 months in the meantime the position is not occupied affecting profitability.")
                         ),
                         column(3,
                                img(class="Imagen_peq", src = "./img/3.jpg"),
                                h4("Maintain the knowledge",class="classtitle"),
                                p(class="classtext","High rotation rates affect running projects and the development of the new ones.")
                         ),
                         column(3,
                                img(class="Imagen_peq", src = "./img/4.jpg"),
                                h4("Create a semi-static work environment",class="classtitle"),
                                p(class="classtext","Having a happy and solid team keep company long run strategy.")
                         )
                         
                         
                       )
              ),
              
              #  ),
              tabPanel("second_page", verbatimTextOutput("summary"),
                       sidebarLayout(
                         sidebarPanel(
                           h2("Insert your Academic transcrips"),
                           fluidRow(column(width=11, 
                                           textInput("file", "File select")),
                                    column(width=1,
                                           uiOutput("check"))),
                           uiOutput("choosy"),
                           actionButton("preview", "Preview!")
                         ),
                         
                         
                         mainPanel(uiOutput("preview"))
                       )
                       
              ),
              tabPanel("", tableOutput("table")
                       
                       
                       
              )
  )
  
  
>>>>>>> 2eac154040b7c87551139575132a4d8d3514f157
)
)
    
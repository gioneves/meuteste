#' app_server
#' 
#' @import tibble
#' @import dplyr
#' @import scales
#' @import shiny
#' @import shinymanager

app_server <- function(input, output, session) {
  
  observeEvent(data()$user,{
    showModal(modalDialog(
      includeHTML(path = "htmls/modal.html"),
      easyClose = TRUE,
      footer = tagList(
        actionButton(inputId = "intro", label = "OK", icon = icon("info-circle"))
      )
    ))
  })
  
  observeEvent(input$intro,{
    removeModal()
  })
  
  res_auth <- shinymanager::secure_server(
    check_credentials = shinymanager::check_credentials(
      data.frame(
        user = c("shiny", "shinymanager"), # mandatory
        password = c("azerty", "12345"), # mandatory
        timeout = 15, # tempo de sessão (em minutos) se você não mexer na aplicação
        stringsAsFactors = FALSE
      )
    )
  )
  
  set_labels(
    language = "en",
    "Please authenticate" = "Por favor, autentique-se:",
    "Username:" = "Usuário:",
    "Password:" = "Senha:",
    "Login" = "Login"
  )
  
  data <- reactive({
    reactiveValuesToList(res_auth)
  })
  
}
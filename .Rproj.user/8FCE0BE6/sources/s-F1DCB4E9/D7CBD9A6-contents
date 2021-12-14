#' ui
#' 
#' @param request needed for bookmarking
#'
#' @import shiny
#' @import shinydashboard
#' @import shinyWidgets

header <- dashboardHeader()
sidebar <- dashboardSidebar()
body <- dashboardBody()

app_ui <- function(request) {
  tagList(
    # shinydashboard config
    dashboardPage(header, sidebar, body, skin = "blue")
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = "testes")
  )
  
  tags$head(
    golem::activate_js(), 
    tags$title("Testando modal")# page title in navigator tab
    
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
    
  )
}
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
    'www', system.file('app/www', package = "golem1")
  )
  
  tags$head(
    golem::activate_js(), 
    tags$title("Hell Tattoo Dashboard"), # page title in navigator tab
    
    HTML(
      "<title> Hell Tattoo Dashboard</title>
    <link rel='shortcut icon' href='www/hell.png'></link>
    <link rel='stylesheet' href='www/shiny.css'></link>
    <script src='www/shiny.js'></script>
    "
    )
    
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
    
  )
}
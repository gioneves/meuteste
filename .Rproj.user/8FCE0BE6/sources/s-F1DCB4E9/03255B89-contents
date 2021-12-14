#' Run the Shiny Application
#'
#' @param ... A series of options to be used inside the app.
#'
#' @export
#' @importFrom shiny shinyApp
#' @importFrom golem with_golem_options

run_app <- function(
  ...
) {
  with_golem_options(
    app = shinyApp(
      ui = shinymanager::secure_app(app_ui,
                                    # # Leave this function for load the css and image in login screen
                                    head_auth = golem_add_external_resources(), 
                                    # estilo da página de login
                                    tags_top = tags$div(
                                      tags$head(tags$link(rel = "stylesheet", href = "www/shiny.css")),
                                      tags$h4("H", style = "align: center;"), 
                                      tags$img(src = "png", width = 100
                                      )
                                    ), 
                                    # add information on bottom ?
                                    tags_bottom = tags$div(
                                      tags$p("Para qu",
                                             tags$a(href = "https://www.google.com.br",
                                                    target = "_blank", "adminr"
                                             )
                                      )
                                    )
      ), 
      server = app_server
    ), 
    golem_opts = list(...)
  )
}
source(system.file("some_functions/utils.R",package = "tmPack"))
#'
#' Cat Module.
#'
#' @description
#' This \href{https://opensource.nibr.com/tidymodules}{`{tm}`} module is a R6 class representing a Cat.
#'
#' @family tm
#'
#' @details
#' More details here about how fantastic is your module.
#'
#'
#' @import tidymodules
#' @export
Cat <- R6::R6Class(
  classname = "Cat",
  inherit = TidyModule,
  public = list(
    #' @description
    #' Module's initialization function.
    #' @param ... options
    #' @return An instance of Cat
    initialize = function(...){
      # Don't remove the line below
      super$initialize(...)

      # Ports definition starts here...

    },
    #' @description
    #' Module's ui function.
    #' @return HTML tags list.
    ui = function(){
      # Module's representation starts here ...
      self$mUI()
    },
    #' @description
    #' Module's server function.
    #' @param input Shiny input
    #' @param output Shiny output
    #' @param session Shiny session
    server = function(input, output, session){
      # Don't remove the line below
      super$server(input,output,session)

      # Module server logic starts here ...
      self$mServer()

    },
    # Function definitions below come from sourced file
    mUI = myUI,
    mServer = myServer
  )
)

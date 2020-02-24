myUI <- function(){
  return(tagList(
    h4("This is my UI function"),
    shiny::textInput(self$ns("textInput"),"My Input"),
    shiny::textOutput(self$ns("myOutput"))
  ))
}

myServer <- function(){
  input <- self$getShinyInput()
  output <- self$getShinyOutput()
  output$myOutput <- shiny::renderText({
    req(input$textInput)
    input$textInput
  })
}

importPanel <- function(id){
    ns <- NS(id)

    tags$div(
        class = "importPanel",
        mainButton(
            mainButton = importDataButton(id = ns("button"), label = "Selecionar")
        ),
        displayDataframe(id = ns("display"))
    )
}

importPanelServer <- function(id){
    moduleServer(
        id,
        function(input, output, session){
           dataFrame <- importDataButtonServer(id = "button")

           displayDataframeServer(id="display", dataFrame = dataFrame)
        }
    )
} 
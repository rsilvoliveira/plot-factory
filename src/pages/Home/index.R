uiHome <- tags$div(
  class = "home",
  sidebarPanel(id = "sideBarPanelHome") 
)

serverHome <- function(input, output, session){
  sidebarPanelServer(id = "sideBarPanelHome") 
}
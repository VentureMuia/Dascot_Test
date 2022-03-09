# Loading the packages
library(shiny)
library(shinydashboard)
library(plotly)
library(shinyWidgets)
library(shinythemes)
library(ggplot2)
library(dashboardthemes)

# Creating the UI
header<-dashboardHeader(title = "Dog Breeds Dashboard",titleWidth = 700)

# Sidebar
sidebar<-dashboardSidebar(
  sidebarMenu(
    menuItem("Dog",tabName = "DogBreed",icon = icon("dog"),class="fa-border"),
    tags$style("fa-spin{text-align:centre;}")
  )
)

# Dashboard Body
body<-dashboardBody(
  shinyDashboardThemes("onenote"),
  tabItems(
    tabItem(tabName = "DogBreed")
  )
)

# Assembling the UI
UI<-dashboardPage(skin="yellow",
                  header,
                  sidebar,
                  body)


# Creating the server
server<-function(input,output,session){
  
}


shinyApp(UI,server)

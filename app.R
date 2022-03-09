# Loading the packages
library(shiny)
library(shinydashboard)
library(plotly)
library(shinyWidgets)
library(shinythemes)
library(ggplot2)
library(dashboardthemes)

# Loading the datasets 

# for traits
breed_traits_raw      <- readr::read_csv('breed_traits.csv')
# for images
breed_rank_all_raw    <- readr::read_csv('breed_rank.csv')




# Creating the UI
header<-dashboardHeader(title = "Dog Breeds Dashboard",titleWidth = 700)

# Sidebar
sidebar<-dashboardSidebar(
  sidebarMenu(id="selected",
    menuItem("Dog",tabName = "DogBreed",icon = icon("dog",class="fa-spin")),
    conditionalPanel(condition = "input.selected=='Dog'",
                     selectInput("Breed",
                                  "Choose the dog Breed",
                                 choices = c("",""),
                                 selected = "Chiu"
                                 ),
                     submitButton("Update!")
                     )
  )
)

# Dashboard Body
body<-dashboardBody(
  shinyDashboardThemes("onenote"),
  tabItems(
    tabItem(tabName = "DogBreed",
            box(width = 12,
                background = "blue",
                height = 100))
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

library(shiny)
library(shinydashboard)
shinyUI(
    dashboardPage(
        dashboardHeader(title= "I am Harmeet"),
        dashboardSidebar(
          (sliderInput("bins","Number of breaks",1,100,50)),
          menuItem("Dashboard"),
            menuSubItem("Personal"),
            menuSubItem("Public Profile"),
          menuItem("Detailed Analysis"),
          menuItem("Raw Data")
        ),
        dashboardBody(
          fluidRow(
            box(plotOutput("histogram"))
          )
        )
    )
)
#ui.R
#Capstone project Coursera Data Science
#Mario Reyes

library(shiny)
library(shinythemes)
library(tidyverse)
library(tm)

shinyUI(
  navbarPage("Predict word",
             theme = shinytheme("cosmo"),
             tabPanel("Home",
                      fluidPage(
                        titlePanel("Home"),
                        sidebarLayout(
                          sidebarPanel(
                            textInput("text_input",
                                      "Enter a word or a phrase:",
                                      value =  "",
                                      placeholder = "Type the word here"),
                            br(),
                          ),
                          mainPanel(
                            h4("Input text"),
                            verbatimTextOutput("text_user"),
                            br(),
                            h4("Predicted"),
                            verbatimTextOutput("text_user2"),
                          )
                        )
                      )
             ),
             tabPanel("Help",
                      h3("Predict Word"),
                      br(),
                      div("Predict Word is a Shiny app that predicts the next word
                            based on word(s) entered by the user.",
                          br(),
                          br(),
                          "The app is user friendly. Just type the word(s) and wait. If the word is not 
                          in the database, a message will be shown. If the input is blank, the message
                          'A prediction it's not possible will be shown'", 
                          br(),
                          br(),
                          "Source code available:",
                          br(),
                          br(),
                          a(target = "_blank", href = "https://github.com/oraclejavanet/coursera-data-science-capstone/tree/master/shiny-app/",
                            "Predict Word"))
 
             )
  )
)

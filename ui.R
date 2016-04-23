library(shiny)

shinyUI(fluidPage(pageWithSidebar(
  
  headerPanel("FinanceScraper.io"),
  
  
  mainPanel(
    
    
      #textOutput("Scraper"),
      dataTableOutput("Table")
    
  ),
  sidebarPanel(
    mainPanel("We aggregate Financial News from the world's most influential websites in the industry"),
    checkboxGroupInput("Scraper", "Select your Preferred News Sites!",
                        choices = c("WSJ", "CNN", "Forbes", "Bloomberg")
                        )
                       
                       
    )
  )
)
  
  
  
)

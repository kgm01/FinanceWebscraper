library(shiny)
library(dplyr)
library(ggplot2)

createLink <- function(val) {
  
  sprintf('<a href="%s" target="_blank" class="btn btn-primary">Link</a>', val)
}

shinyServer(function(input, output, session) {
  
  output$Table = renderDataTable({
    
    selection <- input$Scraper
    
    ##LOAD EXTRACTS BASED ON USER SELECTION
    if(sum("WSJ" %in% selection) >= 1) {
      
      wsj <- wsj_extract()
    } else { wsj <- c()}
    if(sum("CNN" %in% selection) >= 1) {
      
      cnn_money <- cnn_money_extract()
    } else {cnn_money <- c()}
    if(sum("Forbes" %in% selection) >= 1) {
      
      forbes <- forbes_extract()
    } else {forbes <- c()}
    if(sum("Bloomberg" %in% selection) >= 1) {
      
      bloomberg <- bloomberg_extract()
    } else {bloomberg <- c()}
    
    #AGGREGATE EXTRACTS
    table <- rbind(wsj, cnn_money, forbes, bloomberg)
    table$Link <- createLink(table$Link)
    
    
    
    return(table)
  }, escape = FALSE)
  
})         
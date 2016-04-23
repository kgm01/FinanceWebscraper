########Extraction Modules###

#######WSJ RSS Feed Extractor###########

#Market News Feed Extractor
wsj_market_news <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.wsj.com/xml/rss/3_7085.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("WSJ",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[3])
    Description <- c(Description, out.temp[4])
    Publication_Date <- c(Publication_Date, out.temp[7])
    
    
  }
  
  #Consolidate
  wsj_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(wsj_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(wsj_updated)
}

#US Business Feed Extractor
wsj_us_business <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.wsj.com/xml/rss/3_7014.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("WSJ",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[3])
    Description <- c(Description, out.temp[4])
    Publication_Date <- c(Publication_Date, out.temp[7])
    
    
  }
  
  #Consolidate
  wsj_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(wsj_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(wsj_updated)
}

#World News Feed Extractor
wsj_world_news <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.wsj.com/xml/rss/3_7085.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("WSJ",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[3])
    Description <- c(Description, out.temp[4])
    Publication_Date <- c(Publication_Date, out.temp[7])
    
    
  }
  
  #Consolidate
  wsj_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(wsj_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(wsj_updated)
}

#Tech Feed Extractor
wsj_tech <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.wsj.com/xml/rss/3_7455.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("WSJ",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[3])
    Description <- c(Description, out.temp[4])
    Publication_Date <- c(Publication_Date, out.temp[7])
    
    
  }
  
  #Consolidate
  wsj_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(wsj_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(wsj_updated)
}

#RSS Feed Refresher
wsj_extract <- function() {
  
  market <- wsj_market_news()
  us_business <- wsj_us_business()
  world_news <- wsj_world_news()
  tech <- wsj_tech()
  
  wsj_updated <- rbind(market,us_business, world_news, tech)
  
  return(unique(wsj_updated))
}

#######CNN Money Webscraper Modules######

#Money Markets Feed Extractor
cnn_money_markets <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://rss.cnn.com/rss/money_markets.rss")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("CNN Money",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[2])
    Description <- c(Description, out.temp[5])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  cnn_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(cnn_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(cnn_updated)
}

#Tech Feed Extractor
cnn_tech <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://rss.cnn.com/rss/money_technology.rss")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("CNN Money",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[2])
    Description <- c(Description, out.temp[5])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  cnn_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(cnn_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(cnn_updated)
}

#CNN Money Feed extractor
cnn_money_full <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://rss.cnn.com/rss/money_latest.rss")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("CNN Money",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[2])
    Description <- c(Description, out.temp[5])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  cnn_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(cnn_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(cnn_updated)
}

#CNN Companies Feed extractor
cnn_companies <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://rss.cnn.com/rss/money_news_companies.rss")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("CNN Money",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[2])
    Description <- c(Description, out.temp[5])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  cnn_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(cnn_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(cnn_updated)
}

#CNN International extractor
cnn_international <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://rss.cnn.com/rss/money_news_international.rss")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("CNN Money",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[2])
    Description <- c(Description, out.temp[5])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  cnn_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(cnn_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(cnn_updated)
}

#CNN International extractor
cnn_economy <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://rss.cnn.com/rss/money_news_economy.rss")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("CNN Money",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[2])
    Description <- c(Description, out.temp[5])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  cnn_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                            as.character(Publication_Date))
  names(cnn_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(cnn_updated)
}

#Extractor Function
cnn_money_extract <- function() {
  
  money_markets <-cnn_money_markets()
  tech <- cnn_tech()
  money_full <- cnn_money_full()
  companies <- cnn_companies()
  international <- cnn_international()
  economy <- cnn_economy()
  
  cnn_money_updated <- rbind(money_markets, tech, money_full, companies, international, economy)
  
  return(unique(cnn_money_updated))
  
}


######Bloomberg Podcasts Module#########
bloomberg_extract <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.bloomberg.com/feeds/podcasts/etf_report.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("Bloomberg",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[1])
    Link <- c(Link, out.temp[2])
    Description <- c(Description, out.temp[8])
    Publication_Date <- c(Publication_Date, out.temp[4])
    
    
  }
  
  #Consolidate
  bloomberg_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                                  as.character(Publication_Date))
  names(bloomberg_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(bloomberg_updated)
}


######Forbes Module Extractor########

#Market News Feed Extractor
forbes_market <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.forbes.com/markets/index.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("Forbes",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[2])
    Link <- c(Link, out.temp[1])
    Description <- c(Description, out.temp[3])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  forbes_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                               as.character(Publication_Date))
  names(forbes_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(forbes_updated)
}

#Forbes Leadership Feed Extractor
forbes_leadership <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.forbes.com/leadership/index.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("Forbes",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[2])
    Link <- c(Link, out.temp[1])
    Description <- c(Description, out.temp[3])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  forbes_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                               as.character(Publication_Date))
  names(forbes_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(forbes_updated)
}

#Forbes Leadership Feed Extractor
forbes_tech <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.forbes.com/technology/index.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("Forbes",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[2])
    Link <- c(Link, out.temp[1])
    Description <- c(Description, out.temp[3])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  forbes_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                               as.character(Publication_Date))
  names(forbes_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(forbes_updated)
}

#Forbes Leadership Feed Extractor
forbes_business <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.forbes.com/business/index.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("Forbes",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[2])
    Link <- c(Link, out.temp[1])
    Description <- c(Description, out.temp[3])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  forbes_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                               as.character(Publication_Date))
  names(forbes_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(forbes_updated)
}

#Forbes Leadership Feed Extractor
forbes_europe <- function() {
  
  #WSJ Extraction Script:
  library(XML)
  
  #Tree Extraction
  temp.xml <- xmlTreeParse("http://www.forbes.com/europe_news/index.xml")
  
  #Item Based Segregation
  extract.xml <- xpathApply(xmlRoot(temp.xml), "//item")
  
  #Initialize Vectors
  Source <- rep("Forbes",length(extract.xml))
  Title <- c()
  Link <- c()
  Description <- c()
  Publication_Date <- c()
  
  for (i in 1:length(extract.xml)) {
    
    #Extract Raw Output of Item
    out.temp <- xmlSApply(extract.xml[[i]], xmlValue)
    
    #Assign Raw Output by Tag to the Vectors
    Title <- c(Title, out.temp[2])
    Link <- c(Link, out.temp[1])
    Description <- c(Description, out.temp[3])
    Publication_Date <- c(Publication_Date, out.temp[6])
    
    
  }
  
  #Consolidate
  forbes_updated <- data.frame(as.character(Source),as.character(Title), as.character(Link), as.character(Description),
                               as.character(Publication_Date))
  names(forbes_updated) <- c("Source","Title", "Link", "Description", "Publication Date")
  
  return(forbes_updated)
}

#Forbes Aggregator Feed
forbes_extract <- function() {
  
  market <- forbes_market()
  lead <- forbes_leadership()
  business <- forbes_business()
  euro <- forbes_europe()
  
  forbes_updated <- unique(rbind(market, lead, business,euro))
  
  return(unique(forbes_updated))
  
}




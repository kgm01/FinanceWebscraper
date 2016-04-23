

Finance-Webscraper.io
========================================================
author: Karl Moufarrej
date: 22-4-2016

Finance-Webscraper.ShinyApps.io
========================================================


Aggregating Financial News across the world!

Chose this task to:
- Explore the Set Up of a website using Shiny Apps for a later project I'm working on.
- Understand how webscraping RSS Feeds worked using R.
- Start Aggregating Financial Data, for further use in Predictive Analytics in the Financial Industry (Kaggle made me evil).

Demo: Wall Street Journal Tech Feed
========================================================


Here's a demo of the output, the function is included in the code (Check out Github for that).

|Source |Title                                                         |Link                                                                                                                          |Description                                                                                                                                                                                         |Publication Date              |
|:------|:-------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------|
|WSJ    |China Orders Apple to Halt Online Book, Movie Services        |http://www.wsj.com/articles/apple-suspends-online-book-and-movie-services-in-china-1461297947?mod=rss_Technology              |Apple has suspended its online book and movie services in China as it seeks a way to comply with the countryâ€™s stringent new content regulations.                                                 |Fri, 22 Apr 2016 19:12:53 EDT |
|WSJ    |Federal Prosecutors Drop Case to Force Apple to Unlock iPhone |http://www.wsj.com/articles/federal-prosecutors-drop-court-case-to-force-apple-to-unlock-iphone-1461377642?mod=rss_Technology |Investigators were able to get the passcode from the phoneâ€™s owner, but the dropping of the case adds new uncertainty to the governmentâ€™s standoff with the technology company over encryption. |Sat, 23 Apr 2016 04:51:51 EDT |

Webscraper Structure
========================================================


- Create RSS Feed Extractor Functions for WSJ, Forbes, Bloomberg Podcasts and CNN Money
- Allow User to Select Specific Data Sources
- Display in UI the Data Table to list all the Articles

Next Steps
========================================================


- Create Links to Additional Sites (Reuters, AFP, Regional/Local News Sites)
- Format the extracted Article Headlines (Dates, Encoding, Category)
- Store the Articles in a database that refreshes Automatically and stores the data
- Start Doing some Natural Language Processing and use these newly acquired Data Points in predicting Finance Securities Fluctuations!

Thanks for Bearing with me!
========================================================


In Case you're interested in linking up with me here's my info, don't hesitate to message me:
- Linkedin: https://lb.linkedin.com/in/karl-moufarrej-89727589 
- Mail: KarlMoufarrej@gmail.com
- If you're wondering what I do, I'm a Supply & Demand Planner for Diageo in Lebanon, the world largest spirits company. Along with other Analytics/Machine Learning Oriented Projects I'm trying to bring to life.

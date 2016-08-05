#download starbucks data from the Internet.
download.file("https://opendata.socrata.com/api/views/ddym-zvjk/rows.csv?accessType=DOWNLOAD",destfile="data.csv",method="libcurl")

#read in csv data set
starbucks1 <- read.csv("data.csv")

#view data set in IDE
View(starbucks1)

#Selecting Observations for Chicago
starbucks <- starbucks1[ which(starbucks1$State=='IL' 
                               & starbucks1$Country== 'US'), ]

#View new data set in IDE
View(starbucks)

#Call Leaflet for data vis.
library("leaflet") 

#Add Lat. Long. for Chicago and map locations
leaflet() %>% addTiles() %>% setView(-87.623177, 41.881832, zoom = 10) %>% 
  
  addMarkers(data = starbucks, lat = ~ Latitude, lng = ~ Longitude, popup = starbucks$Name)
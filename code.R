library (twitteR)

#Read the list of short URLs from csv file and store in an object (column names in file.csv -> 1.url 2.longurl) 
input <- read.csv("file.csv")

#Coerce the elements in the columns into text
input$url <- as.character(input$url)
input$longurl <- as.character(input$longurl)

#Decode each short URL into its corresponding long URL using for loop
for (i in 1:length(input$url)){input$longurl[i] <- (decode_short_url(input$url[i]))}

#Copy the object into file.csv
write.csv(input, "file.csv")


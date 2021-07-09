#File: Reading JSON file
#Course: Getting and cleaning data wk 1
#Chatper: n.a
#Section:  Reading JSON file
#Author: tinbqt 
#Date: 2021-07-09

#------READING JSON FILE -----------------
library (jsonlite)
getwd()
?fromJSON
jsonData <- fromJSON("sample1.json")
names(jsonData)
names(jsonData$fruit)
names(jsonData$size)
names(jsonData$color)

jsonData2 <- fromJSON("sample2.json")
jsonData2
names(jsonData2)
names(jsonData2$firstName)
names(jsonData2$lastName)

jsonData3 <- fromJSON("https://api.github.com/users/hadley/orgs")
names(jsonData3)
names(jsonData3$login)

#---------WRITING JSON FILE ------------
myjson <- toJSON(iris,pretty = TRUE)
cat(myjson)
iris2 <- fromJSON(myjson)
head(iris2)

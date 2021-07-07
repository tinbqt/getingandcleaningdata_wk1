#File: Regression Model
#Course: Getting and cleaning data wk 1
#Chatper: n.a
#Section:  download file and reading
#Author: tinbqt 
#Date: 2021-07-03

#DOWNLOADING FILE
fileurl<- "https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2020-financial-year-provisional/Download-data/annual-enterprise-survey-2020-financial-year-provisional-csv.csv"
download.file(fileurl,destfile = "./annual.csv",method="curl")

#READING FILE
annualData <- read.csv("annual.csv")
head(annualData)

annualData1 <-read.table("annual.csv", sep =",", header=TRUE,nrows=10)
head(annualData1)

#READINF EXCEL FILE
installed.packages("xlsx")
install.packages(xlsx)
library(xlsx) # need to install JAVA 64 before installing
restaurantsData <- read.xlsx("restaurants.xlsx", sheetIndex = 1, header = TRUE)
head(restaurantsData)
colIndex1 <- 1:3
rowIndex1 <- 1:4
restaurantsData1 <- read.xlsx("restaurants.xlsx", sheetIndex = 1, colIndex=colIndex1, rowIndex = rowIndex1)
head(restaurantsData1)
 
library(XML)
library(httr)
fileurl1 <- "http://www.w3schools.com/xml/plant_catalog.xml" #XML have error when directly reading
download.file(fileurl1,destfile = "./plant_catalog.xml")
doc <- xmlTreeParse("plant_catalog.xml", useInternal=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)

names(rootNode)
rootNode[[1]]
rootNode[[1]][[2]] #access component

#Programaticaly extract parts of the files
xmlApply(rootNode,xmlValue)

xpathApply(rootNode,"//COMMON",xmlValue) # get the first value of XML file
xpathApply(rootNode,"//PRICE",xmlValue) # get the first value of XML file


fileurl2 <- "http://bongdaso.com/Standing.aspx?LeagueID=1&SeasonID=122"
download.file(fileurl2, destfile = "bongdaso.html")
doc1 <- htmlParse("bongdaso.html",useInternal=TRUE)
rootNode2<- xmlRoot(doc1)
rootNode2[[1]]

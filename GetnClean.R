#Get and Clean the Data
#GetnClean.R - must run this file before running plot1.R, plot2,R, plot3.R, plot4.R

library(plyr)
library(dplyr)
library(data.table)
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL,destfile="temp.zip",method="curl") #download the zip file
DT <- fread(unzip("temp.zip"), na.strings = "?") #unzip the file before fread into a data table
DT2 <- mutate(DT2, DateVal = as.Date(Date,format="%d/%m/%Y")) #convert Date string into date type
DT2 <- mutate(DT2, TimeVal = as.POSIXct(strptime(Time,"%H:%M:%S"))) #convert Time string into POSIXct type
DT2 <- mutate(DT2, DateTimeVal = as.POSIXct(strptime(paste(Date,Time,sep=" "),"%d/%m/%Y %H:%M:%S"))) #create a date-time string and convert that to POSIXct type
DT2 <- mutate(DT2, DayofWeek = format(DateVal, "%a")) #abbreviated 3 letter day of week e.g Sun
DT3 <- filter(DT2, DateVal >= "2007-02-01" & DateVal <= "2007-02-02") #subset rows to between 1 and 2 Feb 2007 (inclusive)
rm(DT)

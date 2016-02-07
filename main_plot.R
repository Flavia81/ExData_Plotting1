install.packages("dplyr")
library(dplyr)

# set working directory (change this to fit your needs)
setwd('C:/Users/NewEnergy/ExData_Plotting1')

# download the file
if(!file.exists("./data")){dir.create("./data")}

fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file <- "./Data/household_power_consumption.zip"
householdFile <- "./Data/household_power_consumption.txt"
download.file(fileURL, file)

# unzip the file
unzip(file, exdir = "./Data")

plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")

## set time variable
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)
setwd("C:/Users/Razzle/Desktop/Coursera R")

# Loading and Subsetting Data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

# Changing variable format
GlobalActivePower <- as.numeric(sub$Global_active_power)
datetime <- strptime(paste(sub$Date, sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#Plotting 
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
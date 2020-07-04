setwd("C:/Users/Razzle/Desktop/Coursera R")

# Loading and Subsetting Data 
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

# Changing variable format
GlobalActivePower <- as.numeric(sub$Global_active_power)

# Plotting 
hist(GlobalActivePower, col ="red", main = "Global Active Power",xlab="Global Active Power (kilowatts)")

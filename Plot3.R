setwd("C:/Users/Razzle/Desktop/Coursera R")

# Loading and Subsetting Data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

# Changing variable format
GlobalActivePower <- as.numeric(sub$Global_active_power)
M1 <- as.numeric(sub$Sub_metering_1)
M2 <- as.numeric(sub$Sub_metering_2)
M3 <- as.numeric(sub$Sub_metering_3)

# Plotting 
plot(datetime, M1,type="n",xlab="",ylab="Energy sub metering")
with(sub,lines(datetime,M1))
with(sub,lines(datetime,M2,col="red"))
with(sub,lines(datetime,M3,col="blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
title(main = "Energy sub-metering")
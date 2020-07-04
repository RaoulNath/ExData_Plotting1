setwd("C:/Users/Razzle/Desktop/Coursera R")

# Loading and Subsetting Data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

# Changing variable format
GlobalActivePower <- as.numeric(sub$Global_active_power)
voltage <- as.numeric(sub$Voltage)
GlobalReactivePower <- as.numeric(sub$Global_reactive_power)

# Plotting 
par(mfrow = c(2, 2)) 

plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(datetime, voltage, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(datetime, M1,type="n",xlab="",ylab="Energy sub metering")
with(sub,lines(datetime,M1))
with(sub,lines(datetime,M2,col="red"))
with(sub,lines(datetime,M3,col="blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(datetime, GlobalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")
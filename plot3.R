# Exploratory Data Analysis
# R script to generate plot 3 of Course Project 1

# Read in data
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

# Get a subset of the data on 1/2/2007 and 2/2/2007
subset <- rbind(data[data$Date == "1/2/2007", ], data[data$Date == "2/2/2007", ])
subset$Date <- strftime(as.Date(subset$Date, "%d/%m/%Y"), "%a")

# Make the plot
png("plot3.png", width=480, height=480)
plot(subset$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", axes=FALSE, col="black", ylim=c(0,38))
par(new=T)
plot(subset$Sub_metering_2, type="l", ylab="", xlab="", axes=FALSE, col="red", ylim=c(0,38))
par(new=T)
plot(subset$Sub_metering_3, type="l", ylab="", xlab="", axes=FALSE, col="blue", ylim=c(0,38))
axis(side=1, at=c(0,1440,2880), labels=c("Thu","Fri","Sat"))
axis(side=2)
box()
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
dev.off()
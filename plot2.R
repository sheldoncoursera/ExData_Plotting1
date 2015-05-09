# Exploratory Data Analysis
# R script to generate plot 2 of Course Project 1

# Read in data
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

# Get a subset of the data on 1/2/2007 and 2/2/2007
subset <- rbind(data[data$Date == "1/2/2007", ], data[data$Date == "2/2/2007", ])
subset$Date <- strftime(as.Date(subset$Date, "%d/%m/%Y"), "%a")

# Make the plot
png("plot2.png", width=480, height=480)
plot(subset$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="", axes=FALSE)
axis(side=1, at=c(0,1440,2880), labels=c("Thu","Fri","Sat"))
axis(side=2)
box()
dev.off()
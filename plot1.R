# Exploratory Data Analysis
# R script to generate plot 1 of Course Project 1

# Read in data
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")

# Get a subset of the data on 2007-02-01 and 2007-02-02
subset <- rbind(data[data$Date == "1/2/2007",],data[data$Date == "2/2/2007",])

# Make the plot
png("plot1.png", width=480, height=480)
hist(subset$Global_active_power, col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
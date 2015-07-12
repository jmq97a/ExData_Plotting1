## Create heading vector
colNames <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
              "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## Read in data for 2007-02-01 and 2007-02-02
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", 
                   nrows = 2880, skip = 66637, col.names = colNames)

## Open graphic device
png("plot1.png")

## Create histogram of the global active power
hist(data$Global_active_power, col="red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

## Turn off graphic device
dev.off()
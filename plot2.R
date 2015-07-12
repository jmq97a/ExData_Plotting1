
## Create heading vector
colNames <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
              "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## Read in data for 2007-02-01 and 2007-02-02
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", 
                   nrows = 2880, skip = 66637, col.names = colNames)

## Create combined time date vector and convert to POSIXct format
data$Date <- as.Date(data$Date, "%d/%m/%Y")

dates <- paste(data$Date, data$Time)

dates <- strptime(dates, "%Y-%m-%d %H:%M:%S")

## Open graphic device
png("plot2.png")

## Plot Global Active Power vs. Time
plot(dates, data$Global_active_power, type = "n", xlab = "", 
     ylab = "Global Active Power (kilowatts)")

lines(dates, data$Global_active_power)

## Turn off graphic device
dev.off()
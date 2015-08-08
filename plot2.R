data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data_use <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")

## change format
data_use_time <- strptime(paste(data_use$Date, data_use$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
data_use$Global_active_power <- as.numeric(data_use$Global_active_power)

png("plot2.png", width=480, height=480)
plot(data_use_time, data_use$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
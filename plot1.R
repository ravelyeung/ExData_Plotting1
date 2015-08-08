data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data_use <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")

## Histogram can only work with "numeric" data
data_use$Global_active_power <- as.numeric(data_use$Global_active_power)

png("plot1.png", width=480, height=480)
hist(data_use$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()
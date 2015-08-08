data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data_use <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")


# Plot 3

# Prepare the Data
dat = read.table("household_power_consumption.txt", header = TRUE, sep = ";", nrows = 69517)
dat = dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
dat$DateTime = strptime(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S")
dat$Global_active_power = as.numeric(dat$Global_active_power)
dat$Global_reactive_power = as.numeric(dat$Global_reactive_power)
dat$Voltage = as.numeric(dat$Voltage)
dat$Sub_metering_1 = as.numeric(dat$Sub_metering_1)
dat$Sub_metering_2 = as.numeric(dat$Sub_metering_2)

# Create the Plot only
par(mfrow = c(2,2))
plot(dat$DateTime,dat$Global_active_power, xlab = "", ylab = "Global Active Power",
     main = "", type = "l")
plot(dat$DateTime, dat$Voltage, type = "l", xlab = "datetime", ylab = "Voltage",
     main = "")
plot(dat$DateTime,dat$Sub_metering_1, xlab = "", ylab = "Energy sub metering",
     main = "", type = "l")
lines(dat$DateTime,dat$Sub_metering_2, col = "red")
lines(dat$DateTime,dat$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),lty = 1, box.lty = 0, inset = 0.01)
plot(dat$DateTime,dat$Global_reactive_power, type = "l", xlab = "datetime",
     ylab = "Global_reactive_power", main = "")

# Create the PNG w/ plot
png("plot4.png", height = 480, width = 480)
par(mfrow = c(2,2))
plot(dat$DateTime,dat$Global_active_power, xlab = "", ylab = "Global Active Power",
     main = "", type = "l")
plot(dat$DateTime, dat$Voltage, type = "l", xlab = "datetime", ylab = "Voltage",
     main = "")
plot(dat$DateTime,dat$Sub_metering_1, xlab = "", ylab = "Energy sub metering",
     main = "", type = "l")
lines(dat$DateTime,dat$Sub_metering_2, col = "red")
lines(dat$DateTime,dat$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),lty = 1, box.lty = 0, inset = 0.01)
plot(dat$DateTime,dat$Global_reactive_power, type = "l", xlab = "datetime",
     ylab = "Global_reactive_power", main = "")
dev.off()

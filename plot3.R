# Plot 3

# Prepare the Data
dat = read.table("household_power_consumption.txt", header = TRUE, sep = ";", nrows = 69517)
dat = dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
dat$DateTime = strptime(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S")
dat$Global_active_power = as.numeric(dat$Global_active_power)
dat$Sub_metering_1 = as.numeric(dat$Sub_metering_1)
dat$Sub_metering_2 = as.numeric(dat$Sub_metering_2)

# Create the Plot only
plot(dat$DateTime,dat$Sub_metering_1, xlab = "", ylab = "Energy sub metering",
     main = "", type = "l")
lines(dat$DateTime,dat$Sub_metering_2, col = "red")
lines(dat$DateTime,dat$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),lty = 1)

# Create the PNG w/ plot
png("plot3.png", height = 480, width = 480)
plot(dat$DateTime,dat$Sub_metering_1, xlab = "", ylab = "Energy sub metering",
     main = "", type = "l")
lines(dat$DateTime,dat$Sub_metering_2, col = "red")
lines(dat$DateTime,dat$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),lty = 1)
dev.off()


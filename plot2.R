# Plot 2

# Prepare the Data
dat = read.table("household_power_consumption.txt", header = TRUE, sep = ";", nrows = 69517)
dat = dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
dat$DateTime = strptime(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S")
dat$Global_active_power = as.numeric(dat$Global_active_power)

# Create the Plot only
plot(dat$DateTime,dat$Global_active_power, xlab = "", ylab = "Global Active Power",
     main = "", type = "l")

# Create the PNG w/ plot
png("plot2.png", height = 480, width = 480)
plot(dat$DateTime,dat$Global_active_power, xlab = "", 
     ylab = "Global Active Power (kilowatts)",
     main = "", type = "l")
dev.off()
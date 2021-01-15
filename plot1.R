# Plot 1

# Prepare the Data
dat = read.table("household_power_consumption.txt", header = TRUE, sep = ";", nrows = 69517)
dat = dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
dat$Global_active_power = as.numeric(dat$Global_active_power)

# Create the Plot only
hist(dat$Global_active_power, xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", col = "red")

# Create the PNG w/ plot
png("plot1.png", height = 480, width = 480)
hist(dat$Global_active_power, xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", col = "red")
dev.off()
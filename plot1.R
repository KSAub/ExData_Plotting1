plotdata <- loadData()
png(filename = "plot1.png", width = 480, height = 480)
hist(plotdata$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
dev.off()
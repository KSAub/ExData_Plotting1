plotdata <- loadData()
png(filename = "plot2.png", width = 480, height = 480)
plot(plotdata$Dates_Times, plotdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
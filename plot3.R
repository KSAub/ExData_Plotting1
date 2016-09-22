plotdata <- loadData()
png(filename = "plot3.png", width = 480, height = 480)

#create the plot
plot(plotdata$Dates_Times, plotdata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
#add the additional columns as lines
lines(plotdata$Dates_Times, plotdata$Sub_metering_2, col = "red")
lines(plotdata$Dates_Times, plotdata$Sub_metering_3, col = "blue")
#add the legend, with the line type set to 1 = solid
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
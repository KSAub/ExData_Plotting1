plotdata <- loadData()
png(filename = "plot4.png", width = 480, height = 480)

#set the canvas
par(mfrow = c(2,2))

with(plotdata, {
    #plot 1
    plot(Dates_Times, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power" )
    #plot 2
    plot(Dates_Times, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
    #plot 3
    plot(Dates_Times, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
    lines(Dates_Times, Sub_metering_2, col = "red")
    lines(Dates_Times, Sub_metering_3, col = "blue")
    legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
    #plot 4
    plot(Dates_Times, Global_reactive_power, type = "l", xlab = "datetime")
})





dev.off()
#create function for plotting scripts to call
loadData <- function(){

    #load data, unzip dataset, remove zip-file
    fname = "household_power_consumption.txt"

    if(!file.exists(fname)) {
        furl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        zipname <- "household_power_consumption.zip"
        download.file(furl, destfile = zipname)
        unzip(zipname)
        file.remove(zipname)
    }
    
    #set column types for plotting later
    colcls <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
    #create subset of data for required dates
    dataToUse <- subset(read.csv2(fname, na.strings = "?", colClasses = colcls, dec = "."), Date %in% c( "1/2/2007","2/2/2007"))

    #merge date and time columns, convert new column to timeformat via lubridate, remove old Date/Time columns
    library(lubridate)
    library(dplyr)
    data <- mutate(dataToUse, Dates_Times = dmy_hms(paste(dataToUse$Date, dataToUse$Time, sep = " ")), Date = NULL, Time = NULL)

    #rearrange dataframe
    DTtable <- data[c(8,1:7)]
}
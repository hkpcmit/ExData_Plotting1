## Common library.

require("lubridate")
require("plyr")
require("sqldf")

## readData imports data for household power comsumption between
## 1/2/2007 & 2/2/2007.

readData <- function() {
   inFile = "../household_power_consumption.txt"
   query = "SELECT * from file WHERE Date in ('1/2/2007', '2/2/2007')"
   data = read.csv2.sql(inFile, sql=query, sep=";")
   data
}

## readDataDatetime imports data and add modified date time.

readDataDatetime <- function() {
   data <- readData()

   # Include modified datetime in the data frame.
   data <- ddply(data, .(Date, Time), mutate,
                 Datetime=as.POSIXct(strftime(paste(dmy(Date), Time, sep=" "),
                                              "%Y-%m-%d %H:%M:%S")))
   data
}
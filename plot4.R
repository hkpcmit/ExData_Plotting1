## Plot multiple graphs.
## Source this script from work directory: $workspace/ExData_Plotting1
##
## Ex.
##   > plot4()
##
source("common.R")
source("plot2.R")
source("plot3.R")

plot4 <- function(ToPng = TRUE) {
   # Plot multiple graphs.
   #
   # Args:
   #    ToPng: If true, export plot to figure/plot4.png; O/W, print it
   #           to screen.
   #
   data <- readDataDatetime()

   # Create png device where the histogram is exported.
   if(ToPng) {
      png(file="figure/plot4.png", bg="white", width=480, height=480)
   }
   par(mfrow=c(2, 2))

   # Plot global active power.
   plot2(ToPng=FALSE)

   # Plot voltage.
   with(data, plot(x=Datetime, y=Voltage, type="l", xlab="datetime",
                   ylab="Voltage"))

   # Plot energy sub metering.
   plot3(LegendBorder=FALSE, ToPng=FALSE)

   # Plot global reactive power.
   with(data, plot(x=Datetime, y=Global_reactive_power, type="l",
                   xlab="datetime", ylab="Global_reactive_power"))
   if(ToPng) {
      dev.off()
   }
}

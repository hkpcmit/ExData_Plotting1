## Plot graphs of energy sub metering.
## Source this script from work directory: $workspace/ExData_Plotting1
##
## Ex.
##   > plot3()
##
source("common.R")

plot3 <- function(LegendBorder = TRUE, ToPng = TRUE) {
   # Plot graph of energy sub metering.
   #
   # Args:
   #    LegendBorder: If true, display legend border; O/W, don't display
   #           the border.
   #    ToPng: If true, export plot to figure/plot3.png; O/W, print it
   #           to screen.
   #
   data <- readDataDatetime()

   # Create png device where the histogram is exported.
   if(ToPng) {
      png(file="figure/plot3.png", bg="white", width=480, height=480)
   }

   # Create the required graph.
   with(data, plot(x=Datetime, y=Sub_metering_1, type="l", xlab="",
                   ylab="Energy sub metering"))
   with(data, lines(x=Datetime, y=Sub_metering_2, col="red"))
   with(data, lines(x=Datetime, y=Sub_metering_3, col="blue"))
   lwd <- if(LegendBorder) 1 else 0
   legend("topright", lty=1, col=c("black", "blue", "red"), box.lwd=lwd,
          legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
   if(ToPng) {
      dev.off()
   }
}

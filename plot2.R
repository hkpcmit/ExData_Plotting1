## Plot graph of global active power.
## Source this script from work directory: $workspace/ExData_Plotting1
##
## Ex.
##   > plot2()
##
source("common.R")

plot2 <- function(ToPng = TRUE) {
   # Plot graph of global active power.
   #
   # Args:
   #    ToPng: If true, export plot to figure/plot2.png; O/W, print it
   #           to screen.
   #
   data <- readDataDatetime()

   # Create png device where the graph is exported.
   if(ToPng) {
      png(file="figure/plot2.png", bg="white", width=480, height=480)
   }
   # Create the required graph.
   with(data, plot(x=Datetime, y=Global_active_power, type="l", xlab="",
                   ylab="Global Active Power (kilowatts)"))
   if(ToPng) {
      dev.off()
   }
}

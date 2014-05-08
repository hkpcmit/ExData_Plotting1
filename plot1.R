## Plot histogram of global active power.
## Source this script from work directory: $workspace/ExData_Plotting1
##
## Ex.
##   > plot1()
##
source("common.R")

plot1 <- function(ToPng = TRUE) {
   # Plot histogram of global active power.
   #
   # Args:
   #    ToPng: If true, export plot to figure/plot1.png; O/W, print it
   #           to screen.
   #
   data <- readData()

   # Create png device where the histogram is exported.
   if(ToPng) {
      png(file="figure/plot1.png", bg="white", width=480, height=480)
   }
   # Create the required histogram.
   with(data, hist(Global_active_power, col="red",
                   xlab="Global Active Power (kilowatts)",
                   main="Global Active Power"))
   if(ToPng) {
      dev.off()
   }
}

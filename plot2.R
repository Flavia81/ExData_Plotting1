# set working directory
setwd('C:/Users/NewEnergy/ExData_Plotting1')

# make sure the plots folder exists
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('main_plot.R')

# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')

# plot data
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

# close device
x<-dev.off()
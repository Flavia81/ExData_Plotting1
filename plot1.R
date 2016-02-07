# set working directory
setwd('C:/Users/NewEnergy/ExData_Plotting1')

# make sure the plots folder exists
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('main_plot.R')

# open device
png(filename='plots/plot1.png',width=480,height=480,units='px')

# plot data
hist(finalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# Turn off device
x<-dev.off()
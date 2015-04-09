## Retreive data setup functions
source("plot_data_setup.R")

## Setup the initial data
setup_files()
chart_data <- setup_data()

## Build up the first histogram with transparent backgroud
png(filename="plot1.png", width = 480, height = 480)
hist(chart_data$Global_active_power, breaks=20, ylab="Frequency", xlab="Global Active Power (Kilowatts)", col="red", main="Global Active Power")
dev.off()
## Retreive data setup functions
source("plot_data_setup.R")

## Setup the initial data
setup_files()
chart_data <- setup_data()

## Build up the second line chart
png(filename="plot2.png", width = 480, height = 480)
## Data plotted using additional Data_time column
plot(Global_active_power ~ Date_time, chart_data, type="l", ylab="Global Active Power (Kilowatts)", xlab="")
dev.off()
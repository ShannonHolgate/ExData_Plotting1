## Retreive data setup functions
source("plot_data_setup.R")

## Setup the initial data
setup_files()
chart_data <- setup_data()

## Build up plot3 - the weekend energy sub metering
png(filename="plot3.png", width = 480, height = 480)
plot(Sub_metering_1 ~ Date_time,chart_data, type="n", ylab="Energy sub metering", xlab="")
points(Sub_metering_1 ~ Date_time,chart_data, type="l", col="black")
points(Sub_metering_2 ~ Date_time,chart_data, type="l", col="red")
points(Sub_metering_3 ~ Date_time,chart_data, type="l", col="blue")
legend("topright",lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black", "red", "blue") )       
dev.off()
## Retreive data setup functions
source('plot_data_setup.R')

## Setup the initial data
setup_files()
chart_data <- setup_data()

## Build up the final set of plots to show relationship
png(filename="plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(Global_active_power ~ Date_time, chart_data, type="l", ylab="Global Active Power (Kilowatts)", xlab="")
plot(Voltage ~ Date_time, chart_data, type="l", ylab="Voltage", xlab="datetime")
plot(Sub_metering_1 ~ Date_time,chart_data, type="n", ylab="Energy sub metering", xlab="")
points(Sub_metering_1 ~ Date_time,chart_data, type="l", col="black")
points(Sub_metering_2 ~ Date_time,chart_data, type="l", col="red")
points(Sub_metering_3 ~ Date_time,chart_data, type="l", col="blue")
legend("topright",lty=1, bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black", "red", "blue") )  
plot(Global_reactive_power ~ Date_time, chart_data, type="l")
dev.off()

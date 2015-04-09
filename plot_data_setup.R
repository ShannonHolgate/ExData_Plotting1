##Global data file name
data_file <- "household_power_consumption.txt"

setup_files <- function() {
  ## Download and unzip the file to the current directory
  zip_name <- "exdata-data-household_power_consumption.zip"
  if (!file.exists(zip_name)){
    con <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(con,zip_name)
  }
  if (!file.exists(data_file)){
    unzip(zipfile = zip_name) 
  }
}

setup_data <- function() {
  ## Read in raw data
  raw_data <- read.csv(data_file, sep=";", stringsAsFactors=F, na.strings="?")
  
  ##Setup datetime column and reformat data and time columns
  raw_data$Date_time <- as.POSIXct(paste(raw_data$Date, raw_data$Time), format="%d/%m/%Y %H:%M:%S")
  raw_data$Date <- as.Date(raw_data$Date, "%d/%m/%Y")
  raw_data$Time <- as.POSIXct(strptime(raw_data$Time, "%H:%M:%S"))
  
  ## Return data between 2007-2-1 and 2007-2-2
  subset(raw_data, Date > as.Date("31/01/2007", "%d/%m/%Y") & Date < as.Date("03/02/2007", "%d/%m/%Y"))
}
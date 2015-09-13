library(dplyr)
data <- read.table("~/Desktop/coursera/household_power_consumption.txt", sep=";", quote="\"",skip=1,stringsAsFactors=FALSE,col.names=c("Date","Time","Global Active Power","Global Reactive Power","Voltage","Global intensity","Submetering 1","Submetering 2", "Submetering 3"))
all_data<-mutate(data,Date=as.Date(data$Date, format = "%d/%m/%Y"))
data_plot<-filter(all_data,Date=="2007-02-02"|Date=="2007-02-01")
data_plot1<-as.numeric(data_plot$Global.Active.Power)
hist(data_plot1,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")


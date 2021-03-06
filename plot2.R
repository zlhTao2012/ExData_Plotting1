png("plot2_png",width=480,height=480)
data<-read.table("household_power_consumption.txt", skip=66637,nrow=2880,head=FALSE,sep=";",col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
data$DateTime<-paste(data[,1], data[,2])
data$datetime<-as.POSIXct(strptime(data[,10], "%d/%m/%Y %H:%M:%S"))
plot(data[,11],data[,3],type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()
dataset<-read.csv("household_power_consumption.txt",sep=";",na.strings="?")
filtdata<-dataset[as.Date(dataset$Date,format="%d/%m/%Y") %in% c(as.Date("2007-02-01",format="%Y-%m-%d"),as.Date("2007-02-02",format="%Y-%m-%d")),]
datetimes<-as.POSIXct(paste(filtdata$Date, filtdata$Time), format="%d/%m/%Y %H:%M:%S")
png(filename="plot3.png",width=480,height=480,units="px")
plot(datetimes,filtdata$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(datetimes,filtdata$Sub_metering_2,col="red")
lines(datetimes,filtdata$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.off()

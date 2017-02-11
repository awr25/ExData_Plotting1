dataset<-read.csv("household_power_consumption.txt",sep=";",na.strings="?")
filtdata<-dataset[as.Date(dataset$Date,format="%d/%m/%Y") %in% c(as.Date("2007-02-01",format="%Y-%m-%d"),as.Date("2007-02-02",format="%Y-%m-%d")),]
datetimes<-as.POSIXct(paste(filtdata$Date, filtdata$Time), format="%d/%m/%Y %H:%M:%S")
png(filename="plot2.png",width=480,height=480,units="px")
plot(datetimes,filtdata$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

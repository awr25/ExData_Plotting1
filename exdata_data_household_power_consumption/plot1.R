dataset<-read.csv("household_power_consumption.txt",sep=";",na.strings="?")
filtdata<-dataset[as.Date(dataset$Date,format="%d/%m/%Y") %in% c(as.Date("2007-02-01",format="%Y-%m-%d"),as.Date("2007-02-02",format="%Y-%m-%d")),]

png(filename="plot1.png",width=480,height=480,units="px")
hist(filtdata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
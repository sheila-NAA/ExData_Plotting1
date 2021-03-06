power<-read.table("household_power_consumption.txt",stringsAsFactors = FALSE, header = TRUE, sep = ";")
tail(power)
global<-subset(power, Date =="1/2/2007" | Date == "2/2/2007")
sub_metering_1<-as.numeric(global$Sub_metering_1)
sub_metering_2<-as.numeric(global$Sub_metering_2)
sub_metering_3<-as.numeric(global$Sub_metering_3)
globaldate<-as.Date(global$Date,format= "%d/%m/%Y")
Datetime<-paste(as.Date(globaldate),global$Time)
Datetime1<-as.POSIXct(Datetime)
with(global,plot(sub_metering_1~Datetime1,type ="l",xlab="",ylab="Energy sub metering"))
lines(sub_metering_2~Datetime1,col="Red")
lines(sub_metering_3~Datetime1,col="Blue")
legend("topright",col=c("black","red","blue"),lty = 1, lwd = 2, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,file="plot3.png",width= 480,height=480)
dev.off()
dev.cur()

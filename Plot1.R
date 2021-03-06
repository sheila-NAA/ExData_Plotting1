power<-read.table("household_power_consumption.txt",stringsAsFactors = FALSE, header = TRUE, sep = ";")
power1<-as.numeric(power2$Global_active_power)
power2<-subset(power,Date == "1/2/2007" | Date == "2/2/2007")
View(power1)
hist(power1,col = "red", xlab = "Global Active Power (kilowatts)",main = "Global Active Power" )
dev.copy(png,file = "plot.png", width = 480, height = 480)
dev.off()

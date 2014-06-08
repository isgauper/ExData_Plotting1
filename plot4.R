eUse <- read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?")
feb2 = subset(eUse, Date == "1/2/2007" | Date == "2/2/2007")


png("plot4.png", width = 480, height =480)

par(mfrow=c(2,2))

feb2$DateTime <- strptime(paste(feb2$Date, feb2$Time),format="%d/%m/%Y %H:%M:%S")
with(feb2, plot(DateTime,
                Global_active_power, xlab="",
                ylab = "Global active power",
                type = "l"))

with(feb2, plot(DateTime, Voltage, type="l"))

with(feb2, plot(DateTime, 
                Sub_metering_1, 
                type = "l", 
                xlab = "",
                ylab = "Energy sub metering") )
with(feb2, points(DateTime, 
                  Sub_metering_2, 
                  type= "l", 
                  col="red"))
with(feb2, points(DateTime, 
                  Sub_metering_3, 
                  type= "l", col="blue"))    
legend("topright", pch = "__",
       names(feb2)[8:10],col= c("black", "red", "blue"))

with(feb2, plot(DateTime, Global_reactive_power, type="l"))

dev.off()
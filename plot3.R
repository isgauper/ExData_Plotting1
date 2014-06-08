eUse <- read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?")
feb2 = subset(eUse, Date == "1/2/2007" | Date == "2/2/2007")



png("plot3.png", width = 480, height =480)

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

dev.off()
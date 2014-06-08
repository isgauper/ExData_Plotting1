
eUse <- read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?")
feb2 = subset(eUse, Date == "1/2/2007" | Date == "2/2/2007")

png("plot2.png", width = 480, height =480)

feb2$DateTime <- strptime(paste(feb2$Date, feb2$Time),format="%d/%m/%Y %H:%M:%S")
with(feb2, plot(DateTime,
                Global_active_power, xlab="",
                ylab = "Global active power (kilowatts)",
                type = "l"))

dev.off()
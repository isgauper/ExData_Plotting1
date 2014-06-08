##Exploratory Data Analysis Project 1

eUse <- read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?")
feb2 = subset(eUse, Date == "1/2/2007" | Date == "2/2/2007")




##Plot 1
png("plot1.png", width = 480, height =480)

with(feb2, hist(Global_active_power, 
                col = "red", 
                main = "Global Active Power",
                xlab = "Global Active Power (kilowatts)")
)


dev.off()
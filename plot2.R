household_power_consumption <- read.csv("C:/Users/Ryan/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
data1<-subset(household_power_consumption, as.Date(Date,"%d/%m/%Y")==as.Date('02/01/2007', "%m/%d/%Y") | as.Date(Date,"%d/%m/%Y")==as.Date('02/02/2007', "%m/%d/%Y"), select = Date:Sub_metering_3)

png(file="C:/Users/Ryan/Downloads/plot2.png",width = 480, height = 480)
plot(data1$Global_active_power,ylab="Global Active Power (kilowatts)", xlab="",pch=".",col="black",xaxt='n')
lines(data1$Global_active_power,ylab="Global Active Power (kilowatts)", xlab=" ", pch=".",col="black")
axis(1, at=c(1,1450,2900), lab=c("Thu","Fri","Sat"))
dev.off()
household_power_consumption <- read.csv("C:/Users/Ryan/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
data1<-subset(household_power_consumption, as.Date(Date,"%d/%m/%Y")==as.Date('02/01/2007', "%m/%d/%Y") | as.Date(Date,"%d/%m/%Y")==as.Date('02/02/2007', "%m/%d/%Y"), select = Date:Sub_metering_3)


png(file="C:/Users/Ryan/Downloads/plot4.png",width = 480, height = 480)
# 4 figures arranged in 2 rows and 2 columns
attach(data1)
par(mfrow=c(2,2))

plot(data1$Global_active_power,ylab="Global Active Power", xlab="",pch=".",col="black",xaxt='n')
lines(data1$Global_active_power,ylab="Global Active Power", xlab=" ", pch=".",col="black")
axis(1, at=c(1,1450,2900), lab=c("Thu","Fri","Sat"))

plot(data1$Voltage,ylab="Voltage", xlab="datetime",pch=".",col="black",xaxt='n')
lines(data1$Voltage,ylab="Voltage", xlab=" ", pch=".",col="black")
axis(1, at=c(1,1450,2900), lab=c("Thu","Fri","Sat"))

plot(data1$Sub_metering_1,ylab="Energy sub metering", xlab="",pch=".",col="black",xaxt='n')
lines(data1$Sub_metering_1,ylab="Energy sub metering", xlab=" ", pch=".",col="black")
lines(data1$Sub_metering_2,ylab="Energy sub metering", xlab=" ",col="red")
lines(data1$Sub_metering_3,ylab="Energy sub metering", xlab=" ",col="blue")
legend(1200,40,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col =c("black","red","blue"), lty=1, cex=0.6, bty = "n")
axis(1, at=c(1,1450,2900), lab=c("Thu","Fri","Sat"))

plot(data1$Global_reactive_power,ylab="Global reactive Power", xlab="datetime",pch=".",col="black",xaxt='n')
lines(data1$Global_reactive_power,ylab="Global reactive Power", xlab=" ", pch=".",col="black")
axis(1, at=c(1,1450,2900), lab=c("Thu","Fri","Sat"))
dev.off()

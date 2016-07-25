household_power_consumption <- read.csv("C:/Users/Ryan/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
data1<-subset(household_power_consumption, as.Date(Date,"%d/%m/%Y")==as.Date('02/01/2007', "%m/%d/%Y") | as.Date(Date,"%d/%m/%Y")==as.Date('02/02/2007', "%m/%d/%Y"), select = Date:Sub_metering_3)


plot(data1$Sub_metering_1,ylab="Energy sub metering", xlab="",pch=".",col="black",xaxt='n')
lines(data1$Sub_metering_1,ylab="Energy sub metering", xlab=" ", pch=".",col="black")
lines(data1$Sub_metering_2,ylab="Energy sub metering", xlab=" ",col="red")
lines(data1$Sub_metering_3,ylab="Energy sub metering", xlab=" ",col="blue")


legend(2000,40,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col =c("black","red","blue"), lty=1, cex=0.53124)

axis(1, at=c(1,1450,2900), lab=c("Thu","Fri","Sat"))
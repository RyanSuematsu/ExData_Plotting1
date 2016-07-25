household_power_consumption <- read.csv("C:/Users/Ryan/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
data1<-subset(household_power_consumption, as.Date(Date,"%d/%m/%Y")==as.Date('02/01/2007', "%m/%d/%Y") | as.Date(Date,"%d/%m/%Y")==as.Date('02/02/2007', "%m/%d/%Y"), select = Date:Sub_metering_3)

hist(data1$Global_active_power,xlab="Global Active Power (kilowatts)",main = "Global Active Power",col = "red")


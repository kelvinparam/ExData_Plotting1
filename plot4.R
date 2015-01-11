#Generate plot4.png
#plot4.R
#DT3 (data table) contains rows for between 1 and 2 Feb 2007 (inclusive) - see GetnClean.R.
#GetnClean.R must be run before plot1.R, plot2.R, plot3.R, plot4.R.
#To make viewing easier, I’ve done bg=”white” in png(). 
#If this plot were to be inserted into a web page, I’d do bg=”transparent”.

png(filename="plot4.png", height=480, width=480, 
 bg="white")
par(mfcol = c(2,2))
with (DT3, {
	plot(DateTimeVal, as.numeric(Global_active_power),  type = "l", col = "black", ylab = "Global Active Power", xlab= "",fg="black")
	plot(DateTimeVal, as.numeric(Sub_metering_1),  type = "l", col = "black", ylab = "Energy sub metering", xlab= "",fg="black") 
	lines(DateTimeVal, as.numeric(Sub_metering_2),  type = "l", col = "red") 
	lines(DateTimeVal, as.numeric(Sub_metering_3),  type = "l", col = "blue")
legend("topright", bty="n", pch = c(" "," "," "), lty=c("solid","solid","solid"), col = c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
	plot(DateTimeVal, as.numeric(Voltage),  type = "l", col = "black", ylab = "Voltage", xlab= "datetime",fg="black")
	plot(DateTimeVal, as.numeric(Global_reactive_power),  type = "l", col = "black", ylab= "Global_reactive_power", xlab= "datetime",fg="black")
})
dev.off()

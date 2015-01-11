#Generate plot3.png
#plot3.R
#DT3 (data table) contains rows for between 1 and 2 Feb 2007 (inclusive) - see GetnClean.R.
#GetnClean.R must be run before plot1.R, plot2.R, plot3.R, plot4.R.
#To make viewing easier, I’ve done bg=”white” in png(). 
#If this plot were to be inserted into a web page, I’d do bg=”transparent”.

png(filename="plot3.png", height=480, width=480, 
 bg="white")
with (DT3, {
	plot(DateTimeVal, as.numeric(Sub_metering_1),  type = "l", col = "black", ylab = "Energy sub metering", xlab= "",fg="black") 
	lines(DateTimeVal, as.numeric(Sub_metering_2),  type = "l", col = "red") 
	lines(DateTimeVal, as.numeric(Sub_metering_3),  type = "l", col = "blue")
})
legend("topright", pch = c(" "," "," "), lty=c("solid","solid","solid"), col = c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

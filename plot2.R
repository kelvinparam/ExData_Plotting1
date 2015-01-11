#Generate plot2.png
#plot2.R
#DT3 (data table) contains rows for between 1 and 2 Feb 2007 (inclusive) - see GetnClean.R.
#GetnClean.R must be run before plot1.R, plot2.R, plot3.R, plot4.R.

png(filename="plot2.png", height=480, width=480, 
 bg="transparent")
with (DT3, {
	plot(DateTimeVal, as.numeric(Global_active_power),  type = "l", col = "black", ylab = "Global Active Power (kilowatts)", xlab= "",fg="black") 
})
dev.off()

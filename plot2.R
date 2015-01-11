#Generate plot2.png
#plot2.R
#DT3 (data table) contains rows for between 1 and 2 Feb 2007 (inclusive) - see GetnClean.R.
#GetnClean.R must be run before plot1.R, plot2.R, plot3.R, plot4.R.
#Please read GetnClean.R before you grade this file. 
#Converting the Date string and Time string to the appropriate formats takes place in GetnClean.R.
#Subsetting rows to between 1 and 2 Feb 2007 takes place in GetnClean.R resulting in DT3 which is used here.

png(filename="plot2.png", height=480, width=480, 
 bg="transparent")
with (DT3, {
	plot(DateTimeVal, as.numeric(Global_active_power),  type = "l", col = "black", ylab = "Global Active Power (kilowatts)", xlab= "",fg="black") 
})
dev.off()

#Generate plot1.png
#plot1.R
#DT3 (data table) contains rows for between 1 and 2 Feb 2007 (inclusive) - see GetnClean.R.
#GetnClean.R must be run before plot1.R, plot2.R, plot3.R, plot4.R.
#Please read GetnClean.R before you grade this file. 
#Converting the Date string and Time string to the appropriate formats takes place in GetnClean.R.
#Subsetting rows to between 1 and 2 Feb 2007 takes place in GetnClean.R resulting in DT3 which is used here.

png(filename="plot1.png", height=480, width=480, 
 bg="transparent")
with (DT3, {
	hist(as.numeric(Global_active_power), col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
})
dev.off()

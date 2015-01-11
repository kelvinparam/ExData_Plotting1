#Generate plot1.png
# plot1.R
#DT3 (data table) contains rows for between 1 and 2 Feb 2007 (inclusive) - see GetnClean.R.
#GetnClean.R must be run before plot1.R, plot2.R, plot3.R, plot4.R.
#To make viewing easier, I’ve done bg=”white” in png(). 
#If this plot were to be inserted into a web page, I’d do bg=”transparent”.

png(filename="plot1.png", height=480, width=480, 
 bg="white")
with (DT3, {
	hist(as.numeric(Global_active_power), col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
})
dev.off()

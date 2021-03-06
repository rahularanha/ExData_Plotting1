
mainTab <- read.table("household_power_consumption.txt", sep = ";", dec=".", stringsAsFactors=FALSE, header = TRUE, na.strings = "?")

#subsetting main table for the required two dates
subsetTab <- mainTab[mainTab$Date %in% c("1/2/2007","2/2/2007") ,]

as.Date(subsetTab$Date)             #changing date object to appropriate convention

subsetTab <- na.omit(subsetTab)

png("plot1.png", width=480, height=480)
hist(subsetTab$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()

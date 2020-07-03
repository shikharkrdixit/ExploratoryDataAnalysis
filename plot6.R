setwd("D:/R/Class/Exploratory Data Analysis/xassessment")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
baltimore <- subset(NEI,fips == "24510" & type == "ON-ROAD")
losangeles <- subset(NEI, fips == "06037" & type== "ON-ROAD" )
baltimoreag <- aggregate(Emissions ~ year,baltimore,sum)
losangelesag <- aggregate(Emissions ~ year,losangeles,sum)
png("plot6.png")
plot(baltimoreag$year,baltimoreag$Emissions,type="b",xlim=c(1999,2008),ylim=c(0,4600),col="blue",xlab="Years",ylab="Emissions")
points(losangelesag$year,losangelesag$Emissions,type="b",xlim=c(1999,2008),col="red")
legend("center",col = c("red","blue"),pch = 1,legend=c("Los Angeles","Baltimore"))
dev.off()













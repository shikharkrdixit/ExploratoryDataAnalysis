library("ggplot2")
setwd("D:/R/Class/Exploratory Data Analysis/xassessment")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
head(SCC)
mrgd <- merge(NEI,SCC,by="SCC")
coal <- filter ( SCC, grepl("Coal", EI.Sector))
coal <- subset(mrgd,grepl("Coal",EI.Sector))
png("plot4.png")
g<- ggplot(mrgd, aes(year, Emissions))+
  labs(title="Fine Particulate Emissions\n Coal Combustion Related Sources\n Total United States \n")+
  xlab( "Years") + ylab("Amount of PM2.5 emitted, in tons")
plot4<- g + geom_bar(stat="identity", fill ="brown")
print(plot4)
dev.off()

library("ggplot2")
setwd("D:/R/Class/Exploratory Data Analysis/xassessment")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
png("plot3.png")
g<-ggplot(aes(x = year, y = Emissions), data=baltimore)
g+geom_bar(stat="identity")+
  facet_grid(.~type)+
  labs(x="Year", y=expression("Emission")) + 
  labs(title=expression("Emissions in Baltimore by Sources"))+
  guides(fill=FALSE)
dev.off()

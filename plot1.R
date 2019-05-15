setwd("E:/rechal/Coursera/DataScienceSpecialization/4-Exploratory Data Analysis/Week 4/exdata_data_NEI_data")

# Call Packages dplyr, bindrcpp & ggplot2
library(dplyr)
library(bindrcpp)
library(ggplot2)

NEI_data <- readRDS("summarySCC_PM25.rds")
head(NEI_data)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

head(NEI)
str(NEI)
dim(NEI)

head(SCC[,c("SCC", "Short.Name")])
str(SCC)
dim(SCC)

png("plot1.png", width=480, height=480)

# aggregating NEI emmissions by year
yearly_emmissions <- aggregate(Emissions ~ year, NEI, sum)

# plot1.ng
cols <- c("blue", "maroon", "yellow", "turquoise")
barplot(height=yearly_emmissions$Emissions/1000, names.arg=yearly_emmissions$year, xlab="Year", ylab=expression('Aggregated Emission'),main=expression('Aggregated PM'[2.5]*' Emmissions by Year'), col = cols)

dev.off()

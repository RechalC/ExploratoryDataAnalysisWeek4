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

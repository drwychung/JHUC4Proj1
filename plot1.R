# plot1.R 
# Author: W Chung 
# Date:   November 10, 2023
#
# This script read the preprocessed data stored in the RDS file: 
# power_consumption.rds 
# 
# It produces Plot 1 in the png format (480 x 480)
# plot1.png 
#

df = readRDS('power_consumption.rds') 

png('plot1.png', width=480, height=480, units='px') 

hist(df$Global_active_power, col='red', 
   main='Global Active Power', 
   xlab='Global Active Power (kilowatts)',
   ylab='Frequency') 

dev.off()
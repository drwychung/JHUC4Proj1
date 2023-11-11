# plot2.R 
# Author: W Chung 
# Date:   November 10, 2023
#
# This script read the preprocessed data stored in the RDS file: 
# power_consumption.rds 
# 
# It produces Plot 2 in the png format (480 x 480)
# plot2.png 
#

df = readRDS('power_consumption.rds') 

png('plot2.png', width=480, height=480, units='px') 

plot(df$seq, df$Global_active_power, 
   col='black', type='l', axes=F, frame.plot=F, 
   main='', xlab='', 
   ylab='Global Active Power (kilowatts)' ) 

axis(1, at=c(1,1441,2881), 
   labels=c('Thu','Fri','Sat') ) 

axis(2); box('plot',lwd=1) 

dev.off()
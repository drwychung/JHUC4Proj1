# plot3.R 
# Author: W Chung 
# Date:   November 10, 2023
#
# This script read the preprocessed data stored in the RDS file: 
# power_consumption.rds 
# 
# It produces Plot 3 in the png format (480 x 480)
# plot3.png 
#

df = readRDS('power_consumption.rds') 

png('plot3.png', width=480, height=480, units='px') 

plot(df$seq, df$Sub_metering_1, 
   col='black', type='l', axes=F, frame.plot=F, 
   main='', xlab='', ylab='Energy sub metering' ) 

lines(df$seq, df$Sub_metering_2, col='red')
lines(df$seq, df$Sub_metering_3, col='blue') 

axis(1, at=c(1,1441,2881), 
   labels=c('Thu','Fri','Sat') ) 
axis(2); box('plot',lwd=1) 

legend('topright', col=c('black','red','blue'), lwd=2,
   legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3') )

dev.off()
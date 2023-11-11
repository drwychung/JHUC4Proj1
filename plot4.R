# plot4.R 
# Author: W Chung 
# Date:   November 10, 2023
#
# This script read the preprocessed data stored in the RDS file: 
# power_consumption.rds 
# 
# It produces Plot 4 in the png format (480 x 480)
# plot4.png 
#

df = readRDS('power_consumption.rds') 

png('plot4.png', width=480, height=480, units='px') 

par(mfrow=c(2,2)) 

# Panel 1 - top left
# 
plot(df$seq, df$Global_active_power, 
   col='black', type='l', axes=F, frame.plot=T, 
   main='', xlab='', ylab='Global Active Power' ) 
axis(1, at=c(1,1441,2881), 
   labels=c('Thu','Fri','Sat') ) 
axis(2)

# Panel 2 - top right
# 
plot(df$seq, df$Voltage, 
   col='black', type='l', axes=F, frame.plot=T, 
   main='', xlab='datetime', ylab='Voltage' ) 
axis(1, at=c(1,1441,2881), 
   labels=c('Thu','Fri','Sat') ) 
axis(2)

# Panel 3 - bottom left 
# 
plot(df$seq, df$Sub_metering_1, 
   col='black', type='l', axes=F, frame.plot=F, 
   main='', xlab='', ylab='Energy sub metering' ) 

lines(df$seq, df$Sub_metering_2, col='red')
lines(df$seq, df$Sub_metering_3, col='blue') 

axis(1, at=c(1,1441,2881), 
   labels=c('Thu','Fri','Sat') ) 
axis(2); box('plot',lwd=1) 

legend('topright', col=c('black','red','blue'), lwd=1,
   legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
   box.lty=0, cex=0.8 )

# Panel 4 - bottom right
# 
plot(df$seq, df$Global_reactive_power, 
   col='black', type='l', axes=F, frame.plot=T, 
   main='', xlab='datetime', ylab='Global_reactive_power' ) 
axis(1, at=c(1,1441,2881), 
   labels=c('Thu','Fri','Sat') ) 
axis(2)

dev.off()
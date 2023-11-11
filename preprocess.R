# preprocess.R 
# Author: W Chung 
# Date:   November 10, 2023
#
# This script preprocess the raw data downloaded from UCI: 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# 
# It produces the data file for Plots 1,2,3,and 4 in the RDS format: 
# power_consumption.rds
# 

library(dplyr) 
library(lubridate) 

df = read.table('household_power_consumption.txt',
   header=T, sep=';', na.string='?')

dfo = df %>% 
   filter(Date == '1/2/2007' | Date == '2/2/2007') %>%
   mutate(datetime = dmy_hms(paste(Date, Time )) ) %>%
   arrange(datetime) 
   
dfo$seq = 1:nrow(dfo)

saveRDS(dfo, 'power_consumption.rds') 


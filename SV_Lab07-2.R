#q1
data(airquality)
str(airquality)

table(airquality$Month) #counts the instances of each value (eg. Month '5' appeared in the data frame 31 times)

airquality[2:7,]
airquality[,1:3]
airquality[2:7,1:3]

min(airquality$Temp) == summary(airquality$Temp)["Min."]
max(airquality$Temp) == summary(airquality$Temp)["Max."]
mean(airquality$Temp) == summary(airquality$Temp)["Mean"]

test <- subset(airquality, Temp < 70 & Month == 5)

test$Wind_per_temp <- with(test, Wind/Temp)

summary(airquality$Wind)
airquality$Wind_level <- ifelse(airquality$Wind < 8.5, "low", "medium")
airquality$Wind_level <- ifelse(airquality$Wind > 11, "high", airquality$Wind_level)
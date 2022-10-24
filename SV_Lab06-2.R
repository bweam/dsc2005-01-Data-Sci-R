#q1
id <- c(seq(1:5))
name <- LETTERS[1:5]
month <- month.name[1:5]
field4 <- sample(15:50, replace = TRUE, size = 5)

myDf <- data.frame(id, name, month, field4)

nrow(myDf) # 5 obs.

myDf[3,]

names(myDf)[names(myDf) == "field4"] <- "age"
colnames(myDf)[4] == "age" # TRUE

myDfByAge <- myDf[order(myDf$age), ]

#q2
data("airquality")
str(airquality) #153 rows, 6 columns of Ozone(int), Solar.R(int), Wind(num), Temp(int), Month(int), Day(int)

orderedAirQual <- airquality[order(airquality$Month, airquality$Day), ]

newRow <- data.frame(Ozone = 42, Solar.R = 180, Wind = 5, Temp = 60, Month = 10, Day = 1)

orderedAirQual <- rbind(orderedAirQual, newRow)

newColumn <- sample(c("y","n"), replace = TRUE, size = nrow(orderedAirQual))

orderedAirQual$interesting <- newColumn
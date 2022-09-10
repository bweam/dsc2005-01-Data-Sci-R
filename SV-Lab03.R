#q1 
tento1 <- c(seq(10,1))
tento1[7:10] # 4 3 2 1
tento1[7] < 3 # FALSE
tento1[5] %% 3 == 0 # TRUE

#q2
survey <- c(8,5,9,3,-1,7,2,0,6,8,999,-1)
valid_values <- c(survey[survey %in% seq(1,10)]) # 8 5 9 3 7 2 6 8
invalid <- c(!survey %in% c(seq(1,10))) # FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE
survey[invalid] <- NA

#q3
x <- 1:4
y <- 5:8
z <- 9:12
cbind(x,y,z) # 4 rows, 3 columns
rbind(x,y,z) # 3 rows, 4 columns
matrix(1:20,4,5,byrow=TRUE)

#q4
x2 <- 1:8
ttm <- cbind(x2, x2+2, 2*x2, x2^2)
ttm[6,4] # 36
sum(ttm[3,]) # 23
mean(ttm[,3]) # 9
summary(ttm)
summary(ttm[,3])['Mean'] == mean(ttm[,3]) #TRUE

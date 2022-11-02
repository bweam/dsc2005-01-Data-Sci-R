#Supatach Vanichayangkuranont 2022319225

#q1
area <- pi * 5^2

(pi * 6^2) / area # 1.44

#q2
x <- c(3,1,5,7,10:15)
y <- rep(1:5, c(1,3,2,2,1))

length(x) #10 elements

y <- rep(1:5, c(1,3,2,2,2))

y[5] %% x[5] == 0 #FALSE

z <- c(x,y)

unique(z[(z > 3  & z %% 2 != 0)]) # 5 7 11 13 15

#q3
m1 <- matrix(c(4:1, 31:34), nrow=4)
m2 <- matrix(c(4:1, 31:34), nrow=2, byrow=TRUE)

m3 <- cbind(m1, c(seq(1,7,by=2)))
m4 <- rbind(m2, c(seq(2,-4,by=-2)))

m3[1,] * m4[,2] # 12 992 0

#q4
survey_factor <- factor(c("Agree","Strongly Agree","Disagree","Disagree","Strongly Disagree","Agree"))

survey_factor <- ordered(survey_factor, c("Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree"))

survey_factor[7] <- "Neutral"

levels(survey_factor) <-c("SD", "D", "N", "A", "SA")

length(survey_factor[survey_factor >= "N"]) # 4

#q5
s <- sample(c(seq(0.1,1.4,length.out=5)), 100, replace = T)/sqrt(2) # assumed typo in question 4.1 -> 1.4

length(s[s > 0.5]) # 57

s <- sample(c(seq(0.1,1.4,length.out=5)), 100, replace = T, prob=c(0.1,0.2,0.1,0.7,0.1))

length(s[s > 0.5]) # 79. This is because the probability is changed to bias towards 1.075 (0.7) which when divided by sqrt(2) will be greater than 0.5
#resulting in more generated sample that are above 0.5

#q1
v = c(1,7,3,5,2,7,3,1,2,8)
is.factor(v) #FALSE

f <- factor(v)
f # 1 7 3 5 2 7 3 1 2 8 Levels: 1 2 3 5 7 8
is.factor(f) #TRUE

f2 <- factor(v, levels = c(1,2))
# <NA>

#q2
size_levels <- c("small","medium","large")
data1 <- c("medium","medium","large","small","medium","large","small")
fsize <- factor(data1, levels=size_levels, ordered = TRUE)
summary(fsize) #l:2, m:3, s:2

#q3
sample(10, 5) #no numbers are repeating within a single run instance
sample(10, 5, replace = TRUE) #numbers repeat
sample(5, 20, replace = TRUE)
sample(5, 20, replace = TRUE, prob=c(0.8,0.1,0.1,0,0)) 
# 1's are generated significantly more than the other 
# numbers due to the unequal probability '0.8'. 
# meanwhile, 4 and 5 are not generated due to the 
# '0' probability.

#q4
playlist <- sample(c("p","r","h","k","c"), 30, replace=TRUE, prob=c(0.5,0.1,0.1,0.2,0.1))
length(playlist[playlist == "r"])
length(playlist[playlist == "c"]) 

#q5
temperatures <- cut(c(23.1, 18.7, 8.3, 45.2, 32.5, -12.4, 28.0, -2.1, 13.7, 10.0), breaks=c(-20,10,30,100) , labels=c("Cold","Moderate","Hot"))

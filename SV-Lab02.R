#q1
mean(c(1,11)) # 6
mean(c("1","11")) # error. cannot pass string list into arithmetic mean()

#q2
a <- 5
a / 2 # 2.5

a - 2 # 3
a / 2 # 2.5; a's value hasn't change

a <- a - 2
a / 2 # 1.5; a's value changed

#q3
twoCents <- 0.02
help <- "Please Help!"

#q4
anna_average <- 824 / 5
bea_average <- 1042 / 8
#anna has more friends on average per year
#by 164.8 - 130.25 = 34.55 friends per year

#q5
y <- c(seq(1,100))
z <- c(seq(1,25,length.out = 5))
length(c("I","am","a","character","vector")) # length = 5
length(c("I am also a character vector")) # length = 1

#q6
my_vec <- c("a",1,"b",2,"c",3) #creates a character list and convert 1, 2, 3 into characters. this is because output type is determined by a hierarchy where characters will override integers

#q7
mult3 <- c(seq(3, 30, 3))

print(mult3 %% 2 == 0)

print(sum(mult3 %% 2 == 0)) # 5

#install.packages("MASS")
library(MASS)

#q1
data("attenu")
str(attenu)

#q2
table(attenu$station)

#q3
df <- data.frame(attenu[!is.na(attenu$station),])
#df <- na.omit(attenu)

#q4
highest_var <- 0.0
var_index <- 0
for (i in 1:ncol(df)) {
  if(is.numeric(df[[i]])) {
    if(var(df[[i]]) > highest_var) {
    highest_var <- var(df[[i]])
    var_index <- i
    }
  }
}
cat("variance: ", highest_var, "\nindex: ",var_index)

#q5
summary(df[[4]])
df$dist_level <- ifelse(df[[4]] < 16.5, "low", "average")
df$dist_level <- ifelse(df[[4]] > 41, "high", df$dist_level)

#q6
f <- factor(df$dist_level)
df$dist_level <- ordered(f, c("low", "average", "high"))

#q7
total = 0
count = 0
for(i in 1:ncol(df)) {
  if(is.numeric(df[[i]])) {
    for(j in 1:length(df[[1]])) {
      if(df[[i]][j] >= 10) {
        total <- total + df[[i]][j]
        count <- count + 1
      }
    }
    if (total == 0) {
      print("All numbers are less than 10")
    } else {
      average <- total/count
    }
    break
  }
}
print(average)
summary(df)

#q8
for(i in 1:ncol(df)) {
  if(is.numeric(df[[i]])) {
    if(mean(df[[i]]) < 10) {
      cat("name: ", names(df[i]), "mean: ", mean(df[[i]]))
      break
    }
  }
}

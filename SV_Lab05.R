#q1

myList <- list(12345, "Ada", c(3,7), "cake")
myList[[2]] # "Ada"
names(myList) <- c("Student-ID", "Name", "FavNumbers", "FavFood")
myList[["Name"]] # "Ada"

#q2

another_song <- list(title = "R again!", duration = 75)
similar_song <- list(title = "R u on time?", duration = 230, similar = another_song)
song <- list(title = "R sometimes", duration = 190, track = 5, similar = similar_song)

song[[1]] # "R sometimes"
song[["title"]] # "R sometimes"
song$title # "R sometimes"

song$type <- c("jazz","blues")
song[["track"]] <- 6

song$similar$similar$duration # 75




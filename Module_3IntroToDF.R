candName <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
abcPoll <- c(4, 62, 51, 21, 2, 14, 15)
cbsPoll <- c(12, 75, 43, 19, 1, 2, 19)

electionPolls <- data.frame(candName, abcPoll, cbsPoll)

Avg_Poll <- rowMeans(electionPolls[2:3])

electionPolls <- cbind(electionPolls, Avg_Poll)
electionPolls

save.image(file="Module_3IntroToDF.Rdata")

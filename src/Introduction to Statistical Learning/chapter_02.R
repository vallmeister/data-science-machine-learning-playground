college = read.csv("D:/User/Christian/Develop/data-science-machine-learning-playground/src/Introduction to Statistical Learning/College.csv")
rownames(college) <- college[, 1]
college <- college [ , -1]
View(college)
summary(college)
pairs(college[,2:11])
attach(college)
Private <- as.factor(Private)
plot(Private, Outstate)
Elite <- rep("No", nrow(college))
Elite [ college $ Top10perc > 50] <- "Yes"
Elite <- as.factor(Elite)
college <- data.frame(college, Elite)
View(college)
summary(college)
plot(Elite, Outstate)
par(mfrow = c(1, 1))
hist(college$Apps)
hist(college$Enroll)
hist(college$Personal)
hist(college$F.Undergrad)
hist(college$P.Undergrad)
plot(college$Top25perc, college$Grad.Rate)
plot(college$Grad.Rate ~ college$Top10perc, data=college)

library(ISLR2)
Boston

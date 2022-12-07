library(ISLR2)
library(MASS)
head(Boston)
lm.fit <- lm(medv ~ lstat, data=Boston)
attach(Boston)
lm.fit <- lm(medv ~ lstat)
lm.fit
summary(lm.fit)

auto = read.csv("D:/User/Christian/Develop/data-science-machine-learning-playground/src/Introduction to Statistical Learning/Auto.csv")
head(Auto)
lm.fit <- lm(horsepower ~ mpg, data = auto)

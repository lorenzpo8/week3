library(tidyverse)
library(haven)
library(lubridate)
library(gridExtra)
library(GGally)



# Question 1

baseball
summary(baseball)
ggplot(baseball, aes(x = Payroll.millions, y = Team)) +
  geom_point(size = 2) +
  ggtitle('payroll x team')



# Question 2

readfile <- read_csv('baseball.csv')
ball_data <- readfile$Payroll.millions 
sd(ball_data)



# Question 3



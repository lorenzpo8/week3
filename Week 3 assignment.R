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
# sample mean payroll price in millions rounded
q1_samp_mean <- 88


# Question 2

readfile <- read_csv('baseball.csv')
ball_data <- readfile$Payroll.millions 
sd(ball_data)
# standard deviation
stan_deviat <- 33


# Question 3

cor(baseball$Payroll.millions, baseball$Wins)
cor(baseball$Payroll, baseball$Wins)
# correlation coefficient for payroll millions and wins
corr_co <- 0.50


# Question 4 
# There is a moderate positive correlation between Payroll by Millions and Wins

# Question 5

pre_camp_gal <- 10
samp_motorist <- 60
post_camp_gal

# Null: Following the advertising campaign, there will be no change from the 
#     baseline average purchased gallons (10)
# h0: u <= 10
# h0: P <= 0.01



# Question 6

# While we have a sample size of 60, we do not know the population size, 
#   it is best to assume that 60 would be too small of a sample for the general 
#     analysis to be properly representative.


# Question 7 

# ? t value?
#     incorrect:      (10-11.3) / 3.1
(11.3-10)/(3.1/sqrt(60))
t_val <- 3.248309


# Question 8 

df <- samp_motorist - 1
# df <- 59


# Question 9

crit_val <- 2.39


# Question 10

# The null hypothesis can be rejected because the critical value (2.39) is less
#   than the t-statistic (3.248), this indicates that the observation is 
#     statistically significant.

# The marketing campaign is statistically likely to have increased the average
#   number of gallons purchased, however this test type is not able to 
#     'prove' the alternative hypothesis.
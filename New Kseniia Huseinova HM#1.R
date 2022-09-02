#Kseniia Huseinova
#September 1, 2022
#Homework 1


#Adeel Arshid and Cassidy Drummond

setwd
x <- 1:50
w <- 1 + sqrt(x)/2
example1 <- data.frame(x=x, y= x + rnorm(x)*w)
attach(example1)
fm <- lm(y ~ x)
summary(fm)
lrf <- lowess(x, y)
plot(x, y)
lines(x, lrf$y)
abline(0, 1, lty=3)
abline(coef(fm))
detach()
load("Household_Pulse_data.RData")
#glimpse(acs2017_ny) try this later
Household_Pulse_data[1:10,1:7]
attach(Household_Pulse_data)
summary(Household_Pulse_data)
summary(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "transgender"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "other"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "NA"])
mean(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
sd(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
mean(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
sd(TBIRTH_YEAR[GENID_DESCRIBE == "male"])

#The results suprised me, as average age for males is 54.5 and for females is 52.3, which is high. At the same time, it is not a big difference as for females it is 15.45 and for males is 16.29.
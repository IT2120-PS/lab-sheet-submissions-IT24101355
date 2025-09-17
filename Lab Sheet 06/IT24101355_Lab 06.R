##Setting the directory
setwd("C:\\Users\\User\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24101355_Lab 06")

##Question 01
##Part 1
##Binomial Distribution

## X - number of students who passed the test out of 50 students

##Part 2 - at least 47 students pass
# P(X >= 47) 
pbinom(46,50,0.85, lower.tail = FALSE)

##Question 02
##Part 1 - random variable(X)
## X - number of customer calls receive per hour

##Part 2
##Poisson distribution

##Part 3 - exactly 15 calls are received in an hour
# P(X = 15) = P(X>=14) - P(X>=15)
ppois(14, 12, lower.tail = FALSE) - ppois(15, 12, lower.tail = FALSE) 


##Setting the directory
setwd("C:\\Users\\User\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24101355_lab 07")

##Question 1
# X - number of minutes the train arrives after 8.00 a.m.
# P(X<=25) - P(X<=10)
punif(25,min=0, max=40, lower.tail=TRUE) - punif(10, min=0, max=40, lower.tail=TRUE)

##Question 2
## X - the time to complete a software update in hours
## lamda = 1/3
##at most 2 hours
pexp(2, rate = 1/3, lower.tail = TRUE)

##Question 3
# mean = 100, sd = 15
#(i)
#IQ above 130 --> p(X>130)
pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)
 
##(ii)
##IQ = 0.95
qnorm(0.95, mean =100, sd = 15, lower.tail = TRUE)

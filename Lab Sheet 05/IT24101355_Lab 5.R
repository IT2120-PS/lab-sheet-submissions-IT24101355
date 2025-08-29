#1 Setting directory
setwd("C:\\Users\\User\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24101355_Lab 05")

#import dataset
Delivery_Times<-read.table("Exercise - Lab 05.txt", header = TRUE)
print (Delivery_Times)


#Q2
hist(Delivery_Times$Delivery,
     breaks = seq(20,70, by=5),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times(minutes)",
     ylab = "Frequency",
     col = "darkgreen",
     border = "black")
     

#Q3
#The distribution has a concentration of values on the left with a tail
#stretching toward the right, typical of right-skewed data.


#Q4
hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20, 70, by = 5),
                  right = FALSE,
                  plot = FALSE)

cumulative_freq <- cumsum(hist_data$counts)

plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "darkblue")

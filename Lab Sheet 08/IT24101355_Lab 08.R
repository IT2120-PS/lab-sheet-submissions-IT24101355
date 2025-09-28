##Setting the directory
setwd("C:\\Users\\User\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24101355_Lab 08")

##Import the data set
weights<-read.table("Exercise - LaptopsWeights.txt",header = TRUE )
fix(weights)
attach(weights)

#Extract the weight column
w <- weights$Weight.kg

#Question 1:
#Population mean and Population SD

pop_mean <- mean(w)
pop_sd <- sd(w)

print(pop_mean)
print(pop_sd)

#Question 2:
#Sample mean and Sample SD

# Set the sample size and number of samples
sample_size <- 6
num_samples <- 25

#Create null vectors to store sample data sets.
sample_mean <- c()
sample_sd <- c()

#Loop to generate samples and calculate sample mean and sd
for(i in 1:25){
  s<-sample(w,size = 6,replace=TRUE)
  sample_mean[i] <- mean(s)
  sample_sd[i] <- sd(s)
}
cat ("Sample Mean: " , sample_mean, "\n")
cat ("Sample Standard Deviation: ", sample_sd,"\n")


#Question 3:
#Mean and SD of 25 sample means
mean_of_sample_means <- mean(sample_mean)
sd_of_sample_means <- sd(sample_sd)

cat("Mean of sample means", mean_of_sample_means,"\n")
cat("Standard Deviation of sample SDs", sd_of_sample_means,"\n")

# Relationship between the sample mean and population statistics
cat("Population Mean:", pop_mean, "\n")
cat("Standard Deviation of Sample Means should be close to Population SD / sqrt(sample_size):", pop_sd / sqrt(sample_size), "\n")

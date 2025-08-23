# DESCRIPTIVE STATISTICS-- 
#IRIS DATASET (BUILT IN)
# STEP-1------------------

head(iris)
str(iris)
summary(iris)

#STEP-2-----------------
mean(iris$Sepal.Length)
median(iris$Sepal.Length)

freq_table<-table(iris$Sepal.Length)

names(freq_table)[which.max(freq_table)]

#STEP-3 : MEasures of Dispersion 
# Range
range_val<- range(iris$Sepal.Length)
range_val
max(range_val)-min(range_val)

#Variance
var(iris$Sepal.Length)

#Standard deviation
sd(iris$Sepal.Length)

#Interquartile Range (IQR): The range of the middle 50% of your data (Q3−Q1).

IQR(iris$Sepal.Length)

# Get specific quantiles (e.g., 25th and 75th percentiles)
quantile(iris$Sepal.Length, probs = c(0.25,0.5,0.75))


install.packages("dplyr")
library(dplyr)
#Step 4: Group-wise Descriptive Statistics
# Calculate mean, sd, and count for each species
iris %>%
  group_by(Species) %>%
  summarise(
    count = n(),
    mean_sepal_length = mean(Sepal.Length),
    sd_sepal_length = sd(Sepal.Length),
    mean_petal_length = mean(Petal.Length),
    sd_petal_length = sd(Petal.Length)
  )


#Multivariate Analysis


pairs(iris[, 1:4], main = "Scatterplot Matrix of Iris Data", col = iris$Species)


# NEW DATASET-----------------------------------------

#Reading a CSV File
data <- read.csv("D:\\Downloads\\CASchools.csv")
#Step 1: Load and Inspect Data

head(data)  # View the first few rows
str(data)
summary(data)

#Step 2: Measures of Central Tendency
mean(data$income)
median(data$income)

frequency<-table(data$grades)
names(frequency)[which.max(frequency)]

#Step 3: Measures of Dispersion (Variability)

# Calculate the range
range_val2 <- range(data$math)
max(range_val2) - min(range_val)


# Calculate variance
var(data$income)

# Calculate standard deviation
sd(data$income)

# Calculate the Interquartile Range
IQR(data$income)


# Get specific quantiles (e.g., 25th and 75th percentiles)
quantile(data$income, probs = c(0.25, 0.75))


#Step 4: Group-wise Descriptive Statistics



data %>%
  group_by(county) %>%
  summarise(
    count1 = n(),
    mean_sepal_length1 = mean(income),
    sd_sepal_length1 = sd(income),
    mean_petal_length1 = mean(income),
    sd_petal_length1 = sd(income)
  )


#Multivariate Analysis
color_vector <- as.numeric(as.factor(data$county))

pairs(data[, 4:13], main = "Scatterplot Matrix of Calfornia Test score Data", col = color_vector)



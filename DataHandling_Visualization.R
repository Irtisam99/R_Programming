data("mtcars")
head(mtcars)
install.packages("ggplot2")
library("ggplot2")
# 1. Trend Analysis: Horsepower vs Miles per Gallon
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "HP vs MPG", x = "Horsepower", y = "Miles per Gallon")

#2. Detecting Outliers with Boxplot

ggplot(mtcars, aes(y = mpg)) +
  geom_boxplot(fill = "tomato") +
  labs(title = "Boxplot of Miles per Gallon", y = "MPG")

# 3. Correlation Heatmap
install.packages("GGally")
library(GGally)
ggcorr(mtcars, label = TRUE)


#Data Cleaning
#Remove Missing Values (if any)

# --- Handling Missing Values ---

# Check how many NA values are in each column
colSums(is.na(mtcars))


# Create a new dataframe with rows containing NA values removed
mtcars_clean <- na.omit(mtcars)

# Verify that there are no more NA values
cat("Total NA values after cleaning:", sum(is.na(mtcars_clean)), "\n")


#Remove Duplicate Rows
mtcars_clean <- mtcars_clean[!duplicated(mtcars_clean), ]



#Data Wrangling with dplyr
#Filter cars with mpg > 20
install.packages("dplyr")
library("dplyr")
mtcars_filtered <- mtcars_clean %>% filter(mpg > 20)
print(mtcars_filtered)



#Specific column

mtcars_selected <- mtcars_filtered %>% select(mpg, hp, wt)
mtcars_selected


#Create a new variable: Power-to-Weight Ratio
mtcars_mutated <- mtcars_selected %>%
  mutate(power_to_weight = hp / wt)

mtcars_mutated

#Normalization and Scaling
#Normalize mpg, hp, wt
mtcars_scaled <- mtcars_selected %>%
  mutate(across(c(mpg, hp, wt), ~ scale(.)[,1]))
head(mtcars_scaled)


# NEW CSV FILE-

#Reading a CSV File
data <- read.csv("D:\\Downloads\\auto-mpg.csv", na.strings = "?")
head(data)
summary(data$horsepower)



#Data Cleaning
#Remove Missing Values (if any)

# --- Handling Missing Values ---

# Check how many NA values are in each column
colSums(is.na(data))


# Create a new dataframe with rows containing NA values removed
cars_clean <- na.omit(data)

# Verify that there are no more NA values
cat("Total NA values after cleaning:", sum(is.na(cars_clean)), "\n")


#Remove Duplicate Rows
cars_clean <- cars_clean[!duplicated(cars_clean), ]


#Advanced Visualization with ggplot2
library("ggplot2")
ggplot(data, aes(x =horsepower, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "HP vs MPG", x = "Horsepower", y = "Miles per Gallon")


#2. Detecting Outliers with Boxplot

ggplot(data, aes(y = mpg)) +
  geom_boxplot(fill = "green") +
  labs(title = "Boxplot of Miles per Gallon", y = "MPG")



#3. Correlation Heatmap


library(GGally)
ggcorr(data, label = TRUE)



#Data Wrangling with dplyr
#Filter cars with mpg > 15
#install.packages("dplyr")
library("dplyr")
cars_filtered <-cars_clean %>% filter(mpg > 40)
print(cars_filtered)


#Specific column

cars_selected <- cars_filtered %>% select(mpg, horsepower, weight)
cars_selected


#Create a new variable: Power-to-Weight Ratio
cars_mutated <- cars_selected %>%
  mutate(power_to_weight = horsepower / weight)

cars_mutated

#Normalization and Scaling
#Normalize mpg, hp, wt
cars_scaled <- cars_selected %>%
  mutate(across(c(mpg, horsepower, weight), ~ scale(.)[,1]))
head(cars_scaled)






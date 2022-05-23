library("tidyverse")
library(ggplot2)

data <- read.csv("./Cleaned_Laptop_data.csv")


groupedByStarRating <- data %>%
  group_by(brand) %>%
  summarise(star_rating_mean = mean(star_rating) ) 

ggplot(groupedByStarRating, aes(brand,star_rating_mean))


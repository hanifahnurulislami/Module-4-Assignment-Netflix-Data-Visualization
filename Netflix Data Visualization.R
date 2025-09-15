# ===============================================
# Netflix Data Visualization - R Integration Step
# ===============================================

# 1️⃣ Set the working directory (change the path if your file is in a different location)
setwd("~/Programming Python & R/Module 4 Assignment")

# 2️⃣ Install & load ggplot2 (installation is needed only once)
if (!require(ggplot2)) {
  install.packages("ggplot2")
  library(ggplot2)
} else {
  library(ggplot2)
}

# 3️⃣ Load the cleaned dataset from Python
df <- read.csv("Netflix_shows_movies_clean.csv")

# 4️⃣ Count the number of titles for each rating
rating_counts <- as.data.frame(table(df$rating))
colnames(rating_counts) <- c("rating", "count")

# 5️⃣ Visualize the rating distribution with ggplot2
ggplot(rating_counts, aes(x = reorder(rating, -count), y = count)) +
  geom_col(fill = "tomato", color = "black") +
  geom_text(aes(label = count), vjust = -0.3, size = 3.5, fontface = "bold") +
  labs(title = "Distribution of Ratings",
       x = "Rating",
       y = "Number of Titles") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
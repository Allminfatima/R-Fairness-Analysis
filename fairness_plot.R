# Set working directory
setwd("C:/R")

# Get current working directory
getwd()

# Read the CSV file
df <- read.csv("fairness_plot.csv")

# Summary of the data frame
summary(df)

# Structure of the data frame
str(df)

# Set CRAN mirror
options(repos = "https://cloud.r-project.org")

# Install and load ggplot2 package
install.packages("ggplot2")
library(ggplot2)

# Install and load tidyr package
install.packages("tidyr")
library(tidyr)

# Reshape the data frame
df_long <- pivot_longer(df, # nolint # nolint
                         cols = 2:5, # nolint
                         names_to = "Fairness_Rating", # nolint
                         values_to = "FR")
str(df_long)

# Plotting
gg <- ggplot(df_long, aes(condition, FR, color = Fairness_Rating)) +
  geom_violin(width = 2, aes(fill = Fairness_Rating)) +
  stat_summary(geom = "errorbar", color = "black", width = 0.2, size = 0.5) +
  stat_summary(geom = "point", color = "black", size = 3) +
  theme_classic() +
  theme(
    legend.position = 'none', # nolint
    plot.title = element_text(size = 15, hjust = 0.5, margin = margin(b = 10)), # Centering the title and adding margin # nolint
    axis.title.x = element_text(size = 16),
    axis.title.y = element_text(size = 16),
    axis.text.x = element_text(size = 14),
    axis.text.y = element_text(size = 14)
  ) +
  labs(
    title = "FAIRNESS RATINGS IN LAB EXPERIMENT", # nolint
    x = "Condition",
    y = expression(~ "\u2190" ~ "Unfair" ~ ~  ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"Fair " ~ "\u2192")  # nolint: line_length_linter.
  )

# Print the plot
print(gg)

# Save the plot
ggsave("plot.png", gg)

# Print a message indicating that the plot has been saved
cat("Plot saved as 'plot.png'\n")

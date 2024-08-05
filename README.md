# R-Fairness-Analysis

This repository contains an R script designed to analyze and visualize fairness ratings from a lab experiment. The script reads data from a CSV file, processes it, and generates a violin plot to illustrate the distribution of fairness ratings across different experimental conditions.

## Packages Used

- **ggplot2**: For creating the violin plot and customizing its appearance.
- **tidyr**: For reshaping the data into a long format suitable for plotting.

## Data

- **fairness_plot.csv**: The CSV file containing the fairness ratings data. Ensure this file is in the working directory before running the script.

## Script Details

- **fairness_plot.R**:  The main R script that performs the following tasks:
  - Sets the working directory and loads the necessary libraries.
  - Reads the CSV file into a data frame.
  - Summarizes and examines the structure of the data.
  - Reshapes the data for plotting.
  - Creates a violin plot with error bars and summary points.
  - Saves the plot as a PNG file.

## How to Run

1. **Ensure you have R installed on your system.** You can download it from [CRAN](https://cran.r-project.org/).

2. **Install the required packages if you haven't already:**
  - install.packages("ggplot2")
  - install.packages("tidyr")

3. **Clone the repository to your local machine:**
-> Copy code
- git clone https://github.com/Allminfatima/R-Fairness-Analysis.git
4. **Set your working directory to the location of the script and the CSV file:**
-> Copy code
- setwd("path/to/your/repository")
5. **Run the script in your R environment (e.g., RStudio or terminal):**
-> Copy code
- source("fairness_plot.R")
6. **The script will generate a plot named plot.png in the working directory.**

## Important Information
- **Ensure the fairness_plot.csv file is in the same directory as the script.**
- **The plot title and axis labels are customizable within the script.**
- **The ggsave function saves the plot as a PNG file with the specified filename and dimensions.**
   
## Example Output
![Screenshot 2024-08-05 093650](https://github.com/user-attachments/assets/007927e9-3b2f-4c16-b368-82a059955e14)

## Contributing
Feel free to submit issues or pull requests if you find any bugs or have suggestions for improvements.

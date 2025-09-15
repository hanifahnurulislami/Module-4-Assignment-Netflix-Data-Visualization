# Module-4-Assignment-Netflix-Data-Visualization

This project aims to analyze and visualize a dataset of TV shows and movies available on Netflix. The process involves data cleaning using Python and data visualization using both Python and R to gain interesting insights from the dataset.

---

## Dataset

The dataset used is **Netflix Movies and TV Shows**, which contains a list of movies and TV shows available on Netflix until 2020. This dataset includes information such as title, director, rating, country, genre, and release year.

---

## Tools Used

* **Python:** Used for Data Preprocessing (data cleaning) and visualization.
    * **Pandas:** For data manipulation and cleaning.
    * **Matplotlib:** For creating data visualizations.
* **R:** Used for data visualization.
    * **ggplot2:** A data visualization package in R.

---

## Project Structure

This project consists of two main files:

1.  `Netflix Data Visualization.ipynb`: A Jupyter Notebook (Python) that performs the following steps:
    * Reads the dataset.
    * **Handles missing values** (`director`, `cast`, `country`, `date_added`, `rating`) using a determined strategy (e.g., filling with "Unknown" or the most frequent value).
    * Saves the cleaned data into a new CSV file (`Netflix_shows_movies_clean.csv`).
    * Performs data exploration.
    * Creates a visualization of the top 10 most-watched genres using a **bar chart** with **Matplotlib**.
    * Creates a visualization of the **rating distribution** using a **bar chart** with **Matplotlib**.

2.  `Netflix Data Visualization.R`: An R script that performs further data visualization:
    * Reads the cleaned dataset from the previous Python step.
    * Creates a visualization of the **rating distribution** using a **bar chart** with the **ggplot2** package.

---

## Visualization Results

**1. Top 10 Most Watched Genres (Python)**
This bar chart displays the top 10 genres on Netflix by the number of titles. This visualization provides a quick overview of the content categories most available on the platform.

![Top 10 Most Watched Genres on Netflix](https://i.imgur.com/uWf6p0t.png)

**2. Rating Distribution (Python)**
This horizontal bar chart shows the distribution of ratings (e.g., TV-MA, TV-14, TV-PG) across the dataset using Matplotlib. This visualization is very useful for understanding the target audience demographics of the existing content.

![Distribution of Ratings Python](https://i.imgur.com/a4gXo3s.png)

**3. Rating Distribution (R)**
This is the same visualization as the one created in Python, but it is implemented using the ggplot2 package in R.

![Distribution of Ratings R](https://i.imgur.com/65x5u7T.png)

---

## How to Run the Code

1.  Make sure you have Python and R installed in your environment.
2.  Install the required Python libraries: `pip install pandas matplotlib`.
3.  Install the required R packages: `install.packages("ggplot2")`.
4.  Run the `Netflix Data Visualization.ipynb` Jupyter Notebook sequentially. This will clean the data and generate the `Netflix_shows_movies_clean.csv` file.
5.  After that, run the `Netflix Data Visualization.R` script to create the rating distribution visualization with R.

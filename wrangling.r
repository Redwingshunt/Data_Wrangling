# Q.No.1 (a) What is Data wrangling? Name the package used for Data wrangling in R and describe some of its features.
# (b) Explain with examples the built-in functions and methods available to manipulate a data frame.
# Ans- (a) Data Wrangling in R
# Data wrangling is the process of cleaning, structuring, and enriching raw data into a desired format for better decision-making in less time. It involves transforming and mapping data from one "raw" form into another format with the intent of making it more appropriate and valuable for a variety of downstream purposes, such as analytics.
# dplyr is a package in R primarily used for data wrangling. It provides a set of functions that enable data manipulation in a fast, concise, and consistent manner.
# Features of dplyr
•	Pipe Operator (%>%):
•	The pipe operator allows for chaining multiple operations together, making the code more readable and easier to understand.
R
Copy code
library(dplyr)
mtcars %>%
  filter(mpg > 20) %>%
  select(mpg, hp)

# •	Verbs:
# •	dplyr introduces a set of verbs that correspond to common data manipulation tasks:
# •	filter(): Subset rows based on conditions.
R
Copy code
mtcars %>% filter(mpg > 20)

# •	select(): Select columns by name.
# R
Copy code
mtcars %>% select(mpg, hp)

# •	mutate(): Add new columns or transform existing ones.
R
Copy code
mtcars %>% mutate(weight_kg = wt * 453.592)

# •	summarise(): Summarize multiple values into a single value.
R
Copy code
mtcars %>% summarise(avg_mpg = mean(mpg))

# •	arrange(): Reorder rows.
R
Copy code
mtcars %>% arrange(desc(mpg))

•	Grouping with group_by():
•	This function allows for operations to be performed by group.
R
Copy code
mtcars %>% group_by(cyl) %>% summarise(avg_mpg = mean(mpg))

•	Efficient Data Handling:
•	dplyr is optimized for performance and can handle large datasets efficiently.
(b) Manipulating Data Frames in R
# Data frames are a crucial data structure in R, and there are numerous built-in functions and methods to manipulate them.
# Creating a Data Frame
# You can create a data frame using the data.frame() function.
df <- data.frame(
  Name = c("John", "Jane", "Doe"),
  Age = c(23, 35, 45),
#   Salary = c(50000, 60000, 70000)

# Viewing Data
# •	head(df): View the first few rows of the data frame.


# head(df)

# •	tail(df): View the last few rows.


# tail(df)

# Accessing Columns and Rows
# •	Accessing a column:

# df$Name

# •	Accessing rows by index:

df[1, ]
df[1:2, ]

Adding and Removing Columns
•	Adding a new column:


df$Department <- c("HR", "Finance", "IT")

# •	Removing a column:


df$Salary <- NULL

# Subsetting Data
# •	Subsetting based on a condition:


subset(df, Age > 30)

Merging Data Frames
•	merge(): Combine data frames by columns or rows.


df1 <- data.frame(Name = c("John", "Jane"), Age = c(23, 35))
df2 <- data.frame(Name = c("John", "Jane"), Salary = c(50000, 60000))
merge(df1, df2, by = "Name")

Applying Functions to Data Frames
•	apply(): Apply a function to rows or columns.


apply(df[, 2:3], 2, mean)

•	lapply(): Apply a function to each element of a list or vector.


lapply(df[, 2:3], mean)

•	sapply(): Simplified version of lapply().


sapply(df[, 2:3], mean)


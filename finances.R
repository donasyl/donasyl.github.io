# Installations
install.packages("tidyverse")
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(stringr)
library(lubridate)

# Load
finances <- read_csv("donasyl's personal projects/finances /expense_data_1.csv")

# New column "Time" b/c date and time are originally together
finances$Time <- word(finances$Date, 2, sep = " ")
finances$Date <- word(finances$Date, 1, sep = " ")

# "Subcategory" and "Note" Columns are contain NA values, 
# Removing them from the dataset for further analyses
# Removing "INR" and "Account...11" columns as they reflects "Amount" column
new_finances <- select(finances, Date, Time, Account...2, Category, Note...5, `Income/Expense`, Amount, Currency)
head(new_finances)

# Cleaning method
# Convert Date column to Date class
cleaned_finances <- drop_na(new_finances)
cleaned_finances$Date <- as.Date(cleaned_finances$Date, format = "%m/%d/%Y")

# Officially 273 obs, of 9 variables ; Originally 277 obs. of 11 variables
View(cleaned_finances)

# Summary statistics
summary(cleaned_finances)

# Plotting Every Expense Category by the Amount it costs for individual 
ggplot(data = cleaned_finances) +
  geom_point(mapping = aes(x = Category, y = Amount),
    colour = 'blue', size = 3
  )

# Baxplot for Income/Expense by Amount 
ggplot(cleaned_finances, aes(x = `Income/Expense`, y = Amount, fill = `Income/Expense`)) +
  geom_boxplot() +
  scale_fill_brewer(palette = "Set1") +
  theme_minimal() +
  labs(title = "Paid Expenses & Income by Amount", y = "Amount")

# monthly analyses 
# Filter to only include dates that are the 2nd day of the month, excluding November 2021
filtered_finances <- cleaned_finances %>%
  filter(day(Date) == 2) %>%               # keep only 2nd day of any month
  filter(!(month(Date) == 11 & year(Date) == 2021))  # exclude Nov 2021

# Summarize total Amount by Date and Income/Expense type
totals_split <- filtered_finances %>%
  group_by(Date, `Income/Expense`, Category) %>%
  summarise(Total_Amount = sum(Amount, na.rm = TRUE)) %>%
  ungroup()
totals_split

# Bar graph of Expense and Income graphs
ggplot(totals_split, aes(x = Date, y = Total_Amount, fill = `Income/Expense`)) +
  geom_col(width = 25) +  # bar width adjustment
  facet_wrap(~ `Income/Expense`, scales = "free_y") +
  labs(
    title = "Monthly Income vs Expenses by Amount",
    x = "Date",
    y = "Amount"
  ) +
  scale_x_date(date_labels = "%b %Y", date_breaks = "1 month", expand = expansion(mult = c(0.01, 0.01))) +
  theme_minimal(base_size = 14) +  # font sizing
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "none",
  )

# For understanding where these "Expenses" are going to 
expense_income_by_category <- filtered_expenses %>%
  count(`Income/Expense`, Category)

expense_income_by_category

# Item/Service Expenses
filtered_finances$Note...5

# Save as HTML
htmlwidgets::saveWidget(ggplotly(p), "finance_plot.html")

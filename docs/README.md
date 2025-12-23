Personal Finance Analysis (2022)

This project analyzes my personal income and spending patterns across 2022 using R and data visualization. The goal was to understand how my expenses evolved over time, how income compared to spending, and which categories drove the largest financial impact. The analysis focuses on monthly trends, income versus expense distributions, and category-level spending behavior.

Monthly Income vs. Expenses by Amount

This visualization compares total monthly income and expenses across selected months in 2022.

The expense panel shows noticeable month-to-month variability, with the highest spending occurring in January 2022 and a significant drop in February. This suggests irregular spending patterns driven by specific, non-recurring expenses rather than consistent monthly costs. In contrast, income appears concentrated in fewer months, with a large income spike in February, indicating that income was received intermittently rather than on a steady monthly schedule.

Together, this chart highlights the mismatch between income timing and expense timing, an important insight for understanding cash flow risk and planning savings.

Paid Expenses & Income by Amount (Boxplot)

This boxplot compares the distribution of individual expense transactions versus income transactions.

Expenses are generally smaller in amount but occur frequently, with several high-value outliers indicating occasional large purchases. Income transactions, while less frequent, have much higher values and greater spread, reflecting lump-sum payments rather than incremental earnings.

This contrast demonstrates a common financial structure: consistent smaller expenses paired with infrequent but large income events. The presence of outliers on both sides also highlights periods of financial volatility rather than steady, predictable flows.

Spending by Category

This scatter plot visualizes spending amounts across categories such as Food, Transportation, Household, Apparel, and Other.

Most categories cluster around lower transaction amounts, indicating routine daily or weekly spending. However, categories like Household, Other, and Allowance show higher variability and contain the largest outliers, suggesting that these areas account for major one-time expenses. Salary stands out as a distinct category with a high-value income point, reinforcing the episodic nature of earnings.

This breakdown helps identify which categories are most responsible for financial variability and where budgeting adjustments would have the greatest impact.

Key Takeaways

Spending in 2022 was uneven across months, driven by large, infrequent expenses.

Income was received intermittently rather than consistently, creating potential cash flow gaps.

A small number of categories accounted for most high-value transactions.

Visualization revealed patterns that are not obvious from raw transaction data alone.

If you want, I can:

Tighten this further to resume-level concision

Rewrite it to sound more data science–technical

Add a

within 1.5 sentences each visual

Perfect. Here are tight, 1–1.5 sentence descriptions for each visual. These are portfolio-ready and readable in under 5 seconds.

Monthly Income vs. Expenses by Amount

This chart shows irregular monthly spending with a peak in January 2022 and a sharp drop in February, while income appears concentrated in fewer months. The mismatch highlights uneven cash flow rather than steady monthly patterns.

Paid Expenses & Income by Amount

Expenses occur frequently at lower amounts with several high-value outliers, while income consists of fewer but much larger transactions. This contrast reflects routine spending paired with episodic income.

Spending by Category

Most spending clusters in low-to-moderate amounts across daily categories like food and transportation, with large outliers in household and miscellaneous expenses. These categories drive the majority of financial variability.

If you want, I can:

Make these more technical

Make them more reflective/personal

Rewrite them for recruiters vs academic audience

Just say which.

write a readme for this individual finance r project

Here’s a clean, professional README you can drop directly into your repo. It’s written for recruiters + data teams and clearly explains purpose, methods, and outputs without fluff.

📊 Individual Finance Analysis (R)
Overview

This project analyzes personal income and expense data from 2022 to understand spending behavior, income patterns, and category-level financial trends. Using R, I cleaned raw transaction data, performed exploratory analysis, and produced visualizations that highlight variability in monthly cash flow and spending distribution.

Objectives

Clean and structure raw financial transaction data

Compare income versus expense patterns over time

Identify high-variance spending categories

Generate clear, reproducible visualizations for personal finance insights

Data

The dataset consists of anonymized personal financial transactions, including:

Date and time of transaction

Category (e.g., food, transportation, household)

Income vs. expense classification

Transaction amount and currency

Missing values and irrelevant fields were removed to improve analytical accuracy.

Methods

Data Cleaning & Transformation:
Used dplyr, tidyr, and lubridate to clean dates, remove null values, and standardize variables.

Exploratory Data Analysis:
Generated summary statistics and filtered monthly transactions to analyze recurring financial behavior.

Visualization:
Built scatter plots, boxplots, and faceted bar charts with ggplot2 to compare income and expense distributions across time and categories.

Interactivity (Optional):
Converted selected visualizations to interactive plots using plotly.

Key Visualizations

Monthly income vs. expenses by amount

Distribution of income and expense transactions

Spending patterns by category

These visuals reveal irregular income timing, consistent low-level spending, and a small number of high-impact expense categories.

Tools & Libraries

R

tidyverse (dplyr, tidyr, ggplot2)

plotly

lubridate

Outcomes

This analysis demonstrates how exploratory data analysis can be applied to personal finance data to surface spending patterns, income variability, and financial risk points. The project emphasizes reproducible workflows and clear data storytelling.

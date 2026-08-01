# 📊 World Layoffs Data Cleaning & Exploratory Data Analysis using SQL

<p align="center">

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=for-the-badge&logo=mysql)
![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Project-Completed-success?style=for-the-badge)

</p>

---

# 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Dataset Information](#-dataset-information)
- [Project Objectives](#-project-objectives)
- [Tools Used](#-tools-used)
- [Data Cleaning Process](#-data-cleaning-process)
- [Exploratory Data Analysis](#-exploratory-data-analysis)
- [Key Insights](#-key-insights)
- [SQL Concepts Demonstrated](#-sql-concepts-demonstrated)
- [Repository Structure](#-repository-structure)
- [How to Run](#-how-to-run)
- [Learning Outcomes](#-learning-outcomes)

---

# 📌 Project Overview

This project focuses on cleaning and analyzing a real-world dataset containing global company layoffs using **MySQL 8.0**.

The project is divided into two phases:

- **Data Cleaning**
- **Exploratory Data Analysis (EDA)**

The objective was to transform raw data into a clean dataset and answer business-related questions through SQL queries.

---

# 📂 Dataset Information

| Attribute | Value |
|------------|-------|
| Dataset | World Layoffs Dataset |
| Database | MySQL 8.0 |
| Original Rows | **2,361** |
| Cleaned Rows | **1,995** |
| Columns | **9** |
| Source | CSV file included in this repository |

---

# 🎯 Project Objectives

- Clean inconsistent data
- Remove duplicate records
- Standardize text values
- Handle NULL and blank values
- Convert data into appropriate formats
- Perform exploratory data analysis
- Answer business questions using SQL

---

# 🛠️ Tools Used

- MySQL 8.0
- SQL
- MySQL Workbench

---

# 🧹 Data Cleaning Process

The following cleaning steps were performed:

### ✅ Removed Duplicate Records

- Identified duplicate rows
- Used window functions to remove duplicates safely

### ✅ Standardized Data

- Trimmed unnecessary spaces
- Corrected inconsistent company names
- Standardized industry values
- Standardized country names

### ✅ Fixed Date Format

- Converted dates into SQL DATE format

### ✅ Handled Missing Values

- Replaced blank values with NULL
- Filled missing industry values where possible
- Removed records containing insufficient information

### ✅ Final Validation

Verified that the cleaned dataset contained consistent and reliable data for analysis.

---

# 📈 Exploratory Data Analysis

The following business questions were answered:

- Which companies laid off the most employees?
- Which industries were affected the most?
- Which countries experienced the highest layoffs?
- How did layoffs change over the years?
- Which funding stages had the highest layoffs?
- How did layoffs vary month by month?
- What is the cumulative trend of layoffs over time?
- Which companies had the highest layoffs each year?

---

# 💡 Key Insights

## 🏢 Top Companies by Total Layoffs

| Rank | Company | Employees Laid Off |
|------|----------|-------------------:|
|1|Amazon|18,150|
|2|Google|12,000|
|3|Meta|11,000|
|4|Salesforce|10,090|
|5|Microsoft|10,000|
|6|Philips|10,000|
|7|Ericsson|8,500|
|8|Uber|7,585|
|9|Dell|6,650|
|10|Booking.com|4,601|

---

## 🏭 Top Industries by Layoffs

| Industry | Total Layoffs |
|-----------|--------------:|
|Consumer|45,182|
|Retail|43,613|
|Other|36,289|
|Transportation|33,748|
|Finance|28,344|
|Healthcare|25,953|
|Food|22,855|
|Real Estate|17,565|
|Travel|17,159|
|Hardware|13,828|

---

## 🌍 Top Countries by Layoffs

| Country | Total Layoffs |
|---------|--------------:|
|United States|256,559|
|India|35,993|
|Netherlands|17,220|
|Sweden|11,264|
|Brazil|10,391|
|Germany|8,701|
|United Kingdom|6,398|
|Canada|6,319|
|Singapore|5,995|
|China|5,905|

---

## 📅 Layoffs by Year

| Year | Total Layoffs |
|------|--------------:|
|2020|80,998|
|2021|15,823|
|2022|160,661|
|2023|125,677|

### Observation

- Layoffs remained relatively low during 2021.
- A sharp increase occurred in **2022**.
- **2023** continued the trend with another significant wave of layoffs.

---

## 💰 Funding Stages with Highest Layoffs

| Funding Stage | Total Layoffs |
|--------------|--------------:|
|Post-IPO|204,132|
|Unknown|40,716|
|Acquired|27,576|
|Series C|20,017|
|Series D|19,225|
|Series B|15,311|
|Series E|12,697|
|Series F|9,932|
|Private Equity|7,957|
|Series H|7,244|

### Observation

Companies that had already gone public (**Post-IPO**) accounted for the largest number of layoffs by a considerable margin.

---

## 📊 Monthly Trend

The analysis revealed:

- Layoffs surged during **April–May 2020**.
- Another major spike occurred during **November 2022**.
- The highest monthly layoffs were recorded in **January 2023 (84,714 employees).**

---

## 📈 Rolling Total Analysis

A cumulative running total was calculated to visualize how layoffs accumulated over time.

The total layoffs reached **383,159 employees** by the end of the available dataset.

---

## 🏆 Top Company Each Year

| Year | Company | Layoffs |
|------|---------|--------:|
|2020|Uber|7,525|
|2021|ByteDance|3,600|
|2022|Meta|11,000|
|2023|Google|12,000|

---

# 🧠 SQL Concepts Demonstrated

This project demonstrates practical use of:

- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- DENSE_RANK()
- Aggregate Functions
- GROUP BY
- ORDER BY
- CASE Statements
- DATE Functions
- String Functions
- Data Cleaning Techniques
- Joins
- Temporary Tables
- Running Totals

---

# 📁 Repository Structure

```
Data-Cleaning-EDA-using-SQL
│
├── data_cleaning.sql
├── EDA.sql
├── layoffs.csv
├── README.md
```

---

# 🚀 How to Run

1. Clone this repository.

```bash
git clone https://github.com/MohammedGousemohiyuddinYekkaluru/Data-Cleaning-EDA-using-SQL
```

2. Open MySQL Workbench.

3. Import the CSV dataset.

4. Execute:

- `data_cleaning.sql`
- `EDA.sql`

5. Review the generated outputs.

---

# 📚 Learning Outcomes

Through this project, I gained hands-on experience in:

- Cleaning messy real-world datasets
- Writing optimized SQL queries
- Using window functions for ranking and deduplication
- Performing business-oriented exploratory data analysis
- Extracting meaningful insights from raw data
- Structuring SQL projects for portfolio presentation

---
# World's Richest Billionaires – SQL Data Analysis

## Project Overview

This project explores the world's 200 richest people using Microsoft SQL Server. The analysis examines billionaire wealth distribution, age demographics, geographical representation and industry classifications through structured SQL queries.

Using a dataset containing 200 billionaire records, the project investigates patterns in individual net worth, country representation, industry concentration and demographic characteristics.

The analysis applies SQL querying, filtering, sorting, aggregate functions, grouping, conditional logic and subqueries to extract meaningful information from the dataset.

## Table of Contents

- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Project Objectives](#project-objectives)
- [Analytical Questions](#analytical-questions)
- [Dataset Description](#dataset-description)
- [Tools and Technologies](#tools-and-technologies)
- [Data Exploration and Methodology](#data-exploration-and-methodology)
- [Key Findings and Insights](#key-findings-and-insights)
- [Geographical Analysis](#geographical-analysis)
- [Industry Analysis](#industry-analysis)
- [Business Implications](#business-implications)
- [SQL Skills Demonstrated](#sql-skills-demonstrated)
- [Repository Structure](#repository-structure)
- [How to Explore the Project](#how-to-explore-the-project)
- [Assumptions and Limitations](#assumptions-and-limitations)
- [Conclusion](#conclusion)
- [Author](#author)

## Business Problem

Understanding global wealth distribution requires examining more than individual net worth rankings. Geographic location, industry representation and demographic characteristics provide additional perspectives on how extreme wealth is distributed.

This project uses SQL to investigate the characteristics of the world's 200 richest people and answer questions about their wealth, age, countries and industries.

The analysis provides a structured overview of the dataset and identifies patterns that can support further exploration of global billionaire demographics and wealth distribution.

## Project Objectives

The main objectives of this project are to:

- Explore the characteristics of the world's 200 richest people.
- Identify the wealthiest and least wealthy individuals in the dataset.
- Examine billionaire age distribution and demographic patterns.
- Identify countries with the highest billionaire representation.
- Compare billionaire representation across industries.
- Calculate total and average net worth.
- Investigate relationships between age, country, industry and wealth.
- Apply SQL techniques to answer practical analytical questions.

## Analytical Questions

The analysis addresses the following questions:

### Wealth Analysis

1. Who is the richest person in the dataset?
2. Who are the ten wealthiest billionaires?
3. What is the combined net worth of all 200 billionaires?
4. What is the average net worth?
5. What is the highest and lowest recorded net worth?
6. Which billionaires have net worth above the dataset average?
7. How many billionaires have net worth above $50 billion?
8. Which individuals have net worth between $50 billion and $100 billion?
9. What is the difference between the richest and least wealthy billionaire?

### Demographic Analysis

1. Who are the youngest and oldest billionaires?
2. Who are the five oldest billionaires?
3. What is the average age of the billionaires?
4. How many billionaires are younger than 50?
5. What percentage of the dataset is younger than 50?
6. What is the average net worth of billionaires above age 70?
7. Which industries have the highest average billionaire age?

### Geographical Analysis

1. Which countries are represented?
2. How many billionaires does each country have?
3. Which country has the highest billionaire representation?
4. Which country has the highest combined billionaire wealth?
5. Which country has the highest average billionaire net worth?
6. Which countries have at least five billionaires?
7. Who are the billionaires from Nigeria and South Africa?

### Industry Analysis

1. Which industries are represented in the dataset?
2. Which industry has the highest number of billionaires?
3. What is the total net worth of billionaires in each industry?
4. Which industries have at least ten billionaires?
5. Which industry has the highest combined billionaire wealth?
6. Which industries have the highest average billionaire age?

## Dataset Description

The dataset was obtained from Kaggle.

**Dataset name:** Top 200 Richest Person in the World

**Dataset source:** [Kaggle – Top 200 Richest Person in the World](https://www.kaggle.com/datasets/mayankanand2701/top-200-richest-worlds-billionaires-dataset/data)

**Dataset format:** CSV

**Number of records:** 200

**Number of columns:** 7

**Reporting period:** Not established from the available project materials.

### Dataset Variables

| Column | Description |
|---|---|
| serial_number | Unique record identifier |
| rank | Billionaire ranking |
| name | Name of the billionaire |
| age | Age of the billionaire |
| country | Country associated with the billionaire |
| networth_billion_US_dollars | Net worth expressed in billions of US dollars |
| industry | Industry classification |

The dataset contains information about billionaire rankings, personal demographics, geographical representation and industry classifications.

## Tools and Technologies

**Microsoft SQL Server**

Used as the primary database environment for querying, filtering, aggregating, sorting and analysing the dataset.

**SQL / T-SQL**

Used to retrieve, organize, filter and summarize records and answer the project's analytical questions.

**Kaggle**

Used as the source of the dataset.

## Data Exploration and Methodology

The analysis followed a structured SQL exploration process.

### 1. Initial Data Exploration

The project began by retrieving the dataset and examining its available columns and records.

```sql
SELECT *
FROM Top_200_Richest_Person_in_the_World;
```

This provided an initial understanding of the dataset structure and available variables.

### 2. Data Selection and Filtering

Selected relevant columns and filtered records based on specific conditions.

Examples included:

- Billionaires younger than 40.
- Individuals with net worth above $100 billion.
- Billionaires from Nigeria.
- Billionaires aged between 40 and 60.
- Individuals from selected countries.

SQL techniques included `SELECT`, `WHERE`, `IN`, `BETWEEN`, `LIKE`, `AND` and `OR`.

### 3. Sorting and Ranking

Used `ORDER BY` and `TOP` to identify individuals based on age and net worth.

This included identifying the richest individuals, the ten wealthiest billionaires and the oldest people in the dataset.

### 4. Aggregate Analysis

Applied aggregate functions to calculate important statistical measures.

Functions used included:

- `COUNT()` – counting records.
- `SUM()` – calculating combined net worth.
- `AVG()` – calculating average age and net worth.
- `MAX()` – identifying maximum values.
- `MIN()` – identifying minimum values.

### 5. Grouped Analysis

Used `GROUP BY` to summarize billionaire representation and wealth across countries and industries.

The analysis examined:

- Number of billionaires per country.
- Number of billionaires per industry.
- Total industry net worth.
- Average net worth by country.
- Average age by country and industry.

### 6. Conditional and Comparative Analysis

Applied `HAVING`, subqueries and conditional filtering to investigate more specific analytical questions.

Examples included identifying industries with at least ten billionaires and individuals whose net worth exceeded the overall dataset average.

### 7. Percentage Calculations

Used SQL aggregate calculations and subqueries to determine the percentage of billionaires younger than 50.

## SQL Analysis Screenshots

The following screenshots provide visual evidence of the SQL queries executed and their corresponding results in Microsoft SQL Server Management Studio (SSMS).

### 1. Initial Dataset Exploration

![Initial Dataset Exploration](screenshots/01-dataset-exploration.png)

Initial inspection of the billionaire dataset, including the available records and columns.

### 2. Billionaires from Nigeria and South Africa

![Country Analysis](screenshots/02-country-analysis.png)

Filtering the dataset to identify billionaires associated with Nigeria and South Africa.

### 3. Five Oldest Billionaires

![Oldest Billionaires](screenshots/03-oldest-billionaires.png)

Using SQL sorting to identify the five oldest individuals in the dataset.

### 4. Billionaires with Above-Average Net Worth

![Above Average Net Worth](screenshots/04-above-average-networth.png)

Using a subquery and AVG() to identify billionaires whose net worth exceeds the dataset average.

### 5. Percentage of Billionaires Younger Than 50

![Billionaires Younger Than 50](screenshots/05-under-50-analysis.png)

Calculating the percentage of individuals younger than 50 within the dataset.

### 6. Wealth Difference

![Wealth Difference](screenshots/06-wealth-difference.png)

Using MAX() and MIN() to calculate the difference between the highest and lowest net worth.

### 7. Industry Representation

![Industry Analysis](screenshots/07-industry-analysis.png)

Using GROUP BY, COUNT() and HAVING to identify industries represented by at least ten billionaires.

## Key Findings and Insights

The following findings were calculated from the uploaded dataset.

### 1. Overall Wealth Distribution

| Metric | Result |
|---|---:|
| Total billionaires | 200 |
| Combined net worth | $6,368.5 billion |
| Average net worth | $31.84 billion |
| Highest net worth | $233 billion |
| Lowest net worth | $10.7 billion |
| Wealth difference | $222.3 billion |

Bernard Arnault & family recorded the highest net worth at $233 billion.

The difference between the highest and lowest individual net worth was $222.3 billion, illustrating the substantial wealth variation within the dataset.

### 2. Age Distribution

| Metric | Result |
|---|---:|
| Average age | 69.38 years |
| Youngest billionaire | 31 years |
| Oldest billionaire | 100 years |
| Billionaires younger than 50 | 16 |
| Percentage younger than 50 | 8% |

Mark Mateschitz was the youngest billionaire at 31, while Robert Kuok was the oldest at 100.

Only 8% of the individuals represented in the dataset were younger than 50.

### 3. Geographic Representation

The dataset contains billionaires associated with 37 countries.

The five countries with the highest billionaire representation are:

| Country | Number of Billionaires |
|---|---:|
| United States | 79 |
| China | 16 |
| India | 13 |
| Germany | 11 |
| Russia | 11 |

The United States has the highest representation, accounting for 39.5% of the dataset.

### 4. Industry Representation

The dataset contains 18 industry classifications.

The seven industries with at least ten billionaires are:

| Industry | Billionaire Count |
|---|---:|
| Technology | 40 |
| Finance & Investments | 32 |
| Fashion & Retail | 30 |
| Diversified | 15 |
| Food & Beverage | 15 |
| Metals & Mining | 12 |
| Automotive | 10 |

Technology has the highest representation, followed by Finance & Investments and Fashion & Retail.

### 5. Industry Wealth Distribution

The industries with the highest combined net worth include:

| Industry | Combined Net Worth (USD Billions) |
|---|---:|
| Technology | 1,738.8 |
| Fashion & Retail | 1,165.5 |
| Finance & Investments | 852.6 |
| Diversified | 579.1 |
| Food & Beverage | 366.2 |

Technology leads both in billionaire representation and combined net worth within this dataset.

## Geographical Analysis

The geographical analysis examines how billionaire representation varies across countries.

The United States accounts for 79 of the 200 records, making it the most represented country in the dataset.

China and India follow with 16 and 13 billionaires respectively.

This analysis provides a descriptive comparison of billionaire representation across countries. It does not establish the causes of differences in wealth distribution between countries.

## Industry Analysis

The industry analysis investigates how the 200 individuals are distributed across different economic sectors.

Technology has the highest number of represented billionaires, with 40 individuals and a combined net worth of $1,738.8 billion.

Fashion & Retail and Finance & Investments also account for substantial portions of the dataset's combined wealth.

These results show how the individuals represented in the dataset are distributed across different industry classifications.

## Business Implications

The findings provide several useful perspectives for further investigation:

- **Wealth concentration:** The difference between the highest and lowest net worth highlights substantial wealth variation among the individuals examined.
- **Geographical representation:** The high number of individuals associated with the United States provides a basis for further country-level wealth analysis.
- **Industry representation:** Technology, Finance & Investments and Fashion & Retail have the largest billionaire representation.
- **Age distribution:** The relatively small proportion of billionaires younger than 50 provides an opportunity to investigate demographic differences across industries and countries.

These are descriptive observations, not evidence of the factors causing billionaire wealth or business success.

## SQL Skills Demonstrated

This project demonstrates practical application of the following SQL concepts:

| SQL Concept | Application |
|---|---|
| SELECT | Retrieving relevant dataset columns |
| WHERE | Filtering records |
| DISTINCT | Identifying unique countries and industries |
| ORDER BY | Sorting records |
| TOP | Retrieving selected records |
| IN | Filtering multiple countries |
| BETWEEN | Filtering numerical ranges |
| LIKE | Pattern matching |
| AND / OR | Combining conditions |
| COUNT() | Counting records |
| SUM() | Calculating total wealth |
| AVG() | Calculating average values |
| MAX() / MIN() | Identifying extreme values |
| GROUP BY | Grouping records |
| HAVING | Filtering grouped results |
| Subqueries | Performing comparative analysis |

## Repository Structure

The proposed repository organization is:

```text
worlds-richest-billionaires-sql-analysis/
│
├── README.md
│
├── data/
│   └── Top_200_Richest_Person_in_the_World_Dataset.csv
│
├── sql/
│   └── billionaire_analysis.sql
│
├── screenshots/
│   ├── dataset-preview.png
│   ├── data-exploration.png
│   ├── wealth-analysis.png
│   ├── country-analysis.png
│   └── industry-analysis.png
│
└── docs/
    └── data-dictionary.md
```

The structure above is a recommended organization for the repository.

## How to Explore the Project

To explore the analysis:

1. Download the dataset from the [Kaggle dataset page](https://www.kaggle.com/datasets/mayankanand2701/top-200-richest-worlds-billionaires-dataset/data).
2. Install or access Microsoft SQL Server.
3. Open SQL Server Management Studio (SSMS).
4. Create or select a database for the project.
5. Import the CSV dataset into SQL Server.
6. Ensure the table is named `Top_200_Richest_Person_in_the_World`.
7. Open the SQL analysis script.
8. Execute the queries to explore the dataset and reproduce the analysis.

The SQL script uses Microsoft SQL Server syntax, including `TOP`.

## Assumptions and Limitations

- The analysis is based on the 200 records contained in the supplied dataset.
- The reporting year has not been independently established.
- The dataset's original collection methodology and valuation date have not been verified.
- Net worth figures are treated as expressed in billions of US dollars, as indicated by the dataset column.
- Country and industry classifications are accepted as supplied.
- The analysis describes the available records and should not be interpreted as a current global billionaire ranking.
- The findings do not establish causal relationships between age, country, industry and wealth.
- The original dataset licence should be checked before redistributing the CSV through GitHub.

## Conclusion

This project explored the wealth distribution, demographic characteristics, geographical representation and industry classifications of the world's 200 richest people using Microsoft SQL Server.

Through SQL queries and aggregate analysis, the investigation identified differences in individual net worth, compared billionaire representation across countries and industries, and examined age-related patterns.

The project provided practical experience in applying SQL to a real-world-style dataset and converting structured records into meaningful analytical findings.

It also demonstrates how SQL can be used to investigate business-related questions, summarize complex information and communicate data-driven observations.

## Author

**Abdullahi Muhammed Soliu**

Data Analyst | Business Analytics | Business Intelligence

**Technical Skills:** SQL | Microsoft Excel | Power BI | Data Analysis | Data Visualization

- [E-mail](abdullahimuhammedsoliu0018@gmail.com)
- [Linkedin](abdullahimuhammedsoliu0018@gmail.com)

---

*This project is part of my personal Data Analytics and Business Intelligence portfolio.*

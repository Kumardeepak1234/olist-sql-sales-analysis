# Olist E-Commerce Sales Analysis using SQL Server

## Project Overview
End-to-end SQL analysis of the Olist Brazilian e-commerce dataset (~100K orders, 9 related tables) using **SQL Server (T-SQL) and SSMS**. The goal is to answer real business questions on revenue, customers, products, delivery performance and retention.

## Business Objectives
- Understand overall revenue, order and average order value (AOV) trends
- Identify top-performing product categories and states
- Find high-value and repeat customers
- Measure delivery delays and their impact on customer reviews
- Analyze customer retention using cohort analysis

## Dataset
- **Source:** [Brazilian E-Commerce Public Dataset by Olist (Kaggle)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- **Tables used:** orders, order_items, order_payments, order_reviews, customers, products, sellers, product_category_name_translation
- Raw CSV files are not included in this repo (see `data/README.md` for download steps)

## Tools Used
- SQL Server (T-SQL), SSMS
- GitHub

## Repository Structure
```
olist-sql-sales-analysis/
├── data/
│   ├── README.md              # dataset link, table descriptions
│   └── schema_diagram.png     # table relationships
├── queries/
│   ├── 01_database_setup.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_basic_analysis.sql
│   ├── 04_customer_analysis.sql
│   └── 05_advanced_analysis.sql
├── screenshots/               # sample query outputs
└── README.md
```

## SQL Concepts Used
- JOINs (INNER, LEFT) across multiple tables
- CTEs and subqueries
- Window functions: `RANK()`, `ROW_NUMBER()`, `LAG()`, running totals
- Aggregations, `CASE WHEN`, `GROUP BY`, `HAVING`
- Date functions: `DATEDIFF`, `FORMAT`, `DATEPART`
- Data cleaning: `TRY_CONVERT`, NULL handling, duplicate checks

## Business Questions Answered
1. What is the total revenue, number of orders and AOV?
2. How does monthly revenue trend over time?
3. Which product categories generate the most revenue?
4. Which states contribute the most sales?
5. Who are the top 10 customers by spend?
6. What percentage of customers are repeat buyers?
7. What is the average delivery time and how many orders were delayed?
8. How do delivery delays affect review scores?
9. What is the month-over-month revenue growth?
10. What is the customer retention rate by monthly cohort?

## Key Insights
> Fill this section after completing your analysis. Use real numbers from your queries.

- Total revenue: `___` from `___` delivered orders
- Top category: `___` contributes `___%` of revenue
- Top state: `___` accounts for `___%` of orders
- Repeat customers: only `___%` of customers purchased more than once
- Average delivery time: `___` days; `___%` orders delivered late
- Late deliveries have an average review score of `___` vs `___` for on-time orders

## Recommendations
> Write 3-4 business suggestions based on your insights, for example:

- Improve delivery performance in high-delay states
- Run retention campaigns, as repeat purchase rate is low
- Focus marketing on top-performing categories

## How to Run
1. Install SQL Server Express and SSMS
2. Download the dataset from Kaggle and extract the CSV files
3. Create the database and import the CSV files (Tasks → Import Flat File)
4. Run the scripts in `queries/` in numerical order

## Author
**Deepak Kumar**
Aspiring Data Analyst | SQL • Excel • Power BI • Python
[LinkedIn](https://www.linkedin.com/in/deepak-kumar-863a6518a/) | [GitHub](https://github.com/Kumardeepak1234)

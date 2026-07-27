# Online Retail Sales Analysis using SQL

## Project Overview

This project analyzes transaction-level data from an online retail company using SQL to examine sales performance, customer purchasing behaviour, and product demand. By applying SQL queries to a real-world retail dataset, the project demonstrates how raw transactional data can be transformed into actionable business insights that support data-driven decision-making.

---

## Objectives

- Estimate total revenue generated from retail transactions.
- Identify the highest-selling products.
- Analyze customer spending patterns.
- Compare sales performance across countries.
- Demonstrate SQL techniques for business data analysis.

---

## Dataset

**Source:** https://archive.ics.uci.edu/dataset/352/online+retail?

The dataset contains transaction-level records from an online retailer, including:

- Invoice Number
- Product Description
- Quantity Purchased
- Invoice Date
- Unit Price
- Customer ID
- Country

---

## Tools & Technologies

- SQL
- SQLite
- DB Browser for SQLite
- Microsoft Excel (Dataset Preparation)

---

## SQL Concepts Demonstrated

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- DISTINCT
- HAVING
- Aggregate Functions (SUM, COUNT, AVG)
- LIMIT

---

# Analysis & Findings

## 1. Total Revenue Analysis

Total revenue was estimated by aggregating transaction values (Quantity × Unit Price), providing an overview of overall business performance.

<p align="center">
  <img src="images/total revenue.png" width="850">
</p>

---

## 2. Product Performance

Products were ranked based on total quantity sold to identify the highest-performing items within the retail business.

<p align="center">
  <img src="images/top selling products.png" width="850">
</p>

---

## 3. Customer Spending Analysis

Customer expenditure was aggregated to identify the highest spending customers, highlighting purchasing concentration and customer value.

<p align="center">
  <img src="images/highest spending customers.png" width="850">
</p>

---

## 4. Geographic Sales Distribution

Revenue was summarized by country to compare sales performance across different markets.

<p align="center">
  <img src="images/sales by country.png" width="850">
</p>

---

## 5. Monthly Sales Trend

Monthly revenue was analyzed to observe changes in sales over time and identify broad business trends.

<p align="center">
  <img src="images/monthly sales.png" width="850">
</p>

---

## Repository Structure

```text
online_retail_sales/
│
├── sql/
│   └── analysis_queries.sql
│
├── images/
│   ├── total revenue.png
│   ├── top selling products.png
│   ├── highest spending customers.png
│   ├── sales by country.png
│   └── monthly sales.png
│
└── README.md
```

---

## Conclusion

This project demonstrates the practical application of SQL for retail sales analysis by extracting meaningful insights from transaction-level data. Using aggregation, filtering, and grouping techniques, the analysis evaluates revenue generation, customer purchasing behaviour, product demand, and geographic sales performance. The project highlights fundamental SQL skills commonly used in business intelligence and data analytics.
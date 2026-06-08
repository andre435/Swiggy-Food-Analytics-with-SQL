# Swiggy-Food-Analytics-with-SQL


## Project Overview

This project explores a food delivery dataset from Swiggy using SQL to answer business questions related to restaurant performance, product popularity, pricing strategy, customer satisfaction, and category analysis.

The goal is to demonstrate practical SQL skills used in Data Analytics, including aggregations, Common Table Expressions (CTEs), Window Functions, ranking techniques, and business metric creation.

---

## Business Questions

### Product Analysis

* How many dishes are available on the platform?
* What are the most expensive and cheapest dishes?
* What is the average dish price?

### Restaurant Analysis

* Which restaurants offer the largest variety of dishes?
* Which restaurants have the best overall performance?
* Which restaurants receive the highest customer ratings?

### Category Analysis

* Which category dominates the catalog?
* Which categories generate the highest engagement?
* Which categories achieve the best performance scores?

### Pricing Analysis

* Do expensive dishes receive better ratings?
* Is there a relationship between price and popularity?
* Which price range delivers the best customer satisfaction?

### Geographic Analysis

* Which cities have the highest concentration of restaurants?
* Which cities have the best performance indicators?

---

## SQL Techniques Used

* Aggregate Functions

  * COUNT()
  * SUM()
  * AVG()
  * MIN()
  * MAX()

* Data Segmentation

  * CASE WHEN

* Advanced Filtering

  * HAVING

* Common Table Expressions (CTEs)

  * WITH

* Window Functions

  * DENSE_RANK()
  * ROW_NUMBER()

* Mathematical Functions

  * LOG()
  * ROUND()

---

## Key Metrics

### Performance Score

The project introduces a custom business metric to evaluate dish, restaurant, category, and city performance.

Performance Score combines:

* Average Rating
* Customer Engagement (Rating Count)

Formula:

Performance Score = AVG(Rating) × LOG(SUM(Rating Count) + 1)

This approach balances quality and popularity.

---

## Project Structure

```text
sql/
├── 01_exploratory_analysis.sql
├── 02_restaurant_analysis.sql
├── 03_category_analysis.sql
├── 04_price_analysis.sql
└── 05_city_analysis.sql
```

---

## Skills Demonstrated

* SQL for Data Analysis
* Business Intelligence Thinking
* KPI Development
* Data Exploration
* Ranking and Segmentation
* Analytical Problem Solving

---

## Author

Manuel Adão Ngola

Aspiring Data Analyst focused on SQL, Power BI, Python and Business Intelligence.

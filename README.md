# SQL + Power BI Pizza Sales Analysis Project

## Project Overview
This project demonstrates an end-to-end Data Analyst workflow using SQL and Power BI.

The project focuses on:
- Data extraction
- Data cleaning
- SQL analysis
- Dashboard creation
- Business insights generation

---

## Tools & Technologies
- SQL Server / MySQL
- Power BI
- Excel / CSV
- DAX
- Data Modeling

---

## Business Problem
The company wants to analyze:
- Sales performance
- Daily and Monthly Trend
- Top and Bottom selling product
- Product category performance

---

## SQL Work
Performed:
- Aggregate functions
- CAST function
- Subquery
- Date-Name function
- KPI calculations

Example Query:

```sql
SELECT SUM(total_price) 
AS Total_Revenue 
from pizza_sales;

```

---

## Power BI Dashboard Features
- KPI Cards
- Sales Trend Analysis
- Daily and Monthly Graph analysis
- Top Selling Products
- Bottom Selling Products
- Interactive Filters & Slicers

---

## Dashboard Preview

### Overview Dashboard
![Dashboard](Screenshots/dashboard1.png)

### Sales Insights
![Dashboard](Screenshots/dashboard2.png)

---

## Key Insights
- Orders are highest on Weekends
- Maximum orders are from July and January
- Classic category and Large size pizza contributes to maximum sales.

---

## Project Workflow
1. Data Collection
2. SQL Data Cleaning
3. SQL Analysis
4. Data Modeling
5. Power BI Visualization
6. Business Insights

---

## How to Run the Project

### SQL
1. Open SQL Server/MySQL
2. Run scripts from `SQL/`

### Power BI
1. Open `.pbix` file from `PowerBI/`
2. Refresh dataset connection

---

## Future Improvements
- Add Python automation
- Add real-time data refresh
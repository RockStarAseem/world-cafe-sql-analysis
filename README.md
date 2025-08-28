# world-cafe-sql-analysis
SQL project analyzing World Café restaurant orders and menu data to generate business insights.

# 🍽️ World Café Restaurant - SQL Project

## 📌 Project Overview
This project focuses on analyzing **World Café Restaurant** data using **MySQL**.  
It explores the restaurant’s menu, customer orders, and spending behavior to generate **business insights**.  

The project is divided into three parts:
1. **Menu Analysis** – insights into pricing, categories, and dish distribution.
2. **Order Analysis** – order volumes, item counts, and trends.
3. **Combined Analysis** – linking menu and orders for customer & revenue insights.

---

## 📂 Files in this Repository
- **menu_items.sql** → Queries for menu-level insights (categories, prices, averages).
- **orders.sql** → Queries for order-level insights (date ranges, item counts, order sizes).
- **restaurant order analysis.sql** → Combined analysis of menu and orders (most/least popular items, top spenders, etc.).
- **order_details.csv** → Sample dataset of restaurant orders.

---

## 🛠️ Tools & Technologies
- **SQL (MySQL Workbench)**
- Dataset: Menu Items & Order Details
- Concepts Used:  
  - `JOIN`, `GROUP BY`, `ORDER BY`  
  - Aggregations (`COUNT`, `AVG`, `SUM`)  
  - Filtering with `WHERE` & `HAVING`  
  - Subqueries  

---

## 🚀 Key Insights
1. **Menu Analysis**
   - Identified least and most expensive dishes.  
   - Counted Italian dishes and other categories.  
   - Calculated average dish price per category.  

2. **Order Analysis**
   - Found date range of available orders.  
   - Calculated total orders and items sold.  
   - Detected orders with the highest number of items.  

3. **Combined Insights**
   - Revealed most and least ordered dishes.  
   - Ranked top 5 highest-spending orders.  
   - Analyzed category breakdown for big spenders.  

---

## 📊 Example Findings
- Italian cuisine had some of the most premium-priced dishes.  
- Order **#440** was the highest spender, with a mix of appetizers and mains.  
- Certain beverages and sides were the most frequently ordered items.  

---

## 🧑‍💻 How to Run the Project
1. Create a database in MySQL:
   ```sql
   CREATE DATABASE restaurant_analysis;


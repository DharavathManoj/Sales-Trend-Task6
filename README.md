📊 Task 6 - Sales Trend Analysis Using SQL | Data Analyst Internship

 🔍 Objective

    Analyze monthly **revenue** and **order volume** using SQL aggregate functions and time-based grouping from an `online_sales` dataset.


 📁 Dataset Description

   Table Name:** `online_sales`

| Column      | Type    | Description                     |
|-------------|---------|---------------------------------|
| order_id    | INT     | Unique order identifier         |
| order_date  | DATE    | Date when the order was placed  |
| amount      | DECIMAL | Order revenue amount            |
| product_id  | VARCHAR | Product identifier              |

 🛠️ Tools Used

- SQL (tested with SQLite / PostgreSQL / MySQL)
- DB Browser for SQLite (optional)
- GitHub for version control

 🧱 SQL Table Schema

```sql
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id VARCHAR(10)
);

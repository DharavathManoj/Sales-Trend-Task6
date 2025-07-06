use sales_trend_nalysis;

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id VARCHAR(10)
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2023-01-05', 250.00, 'P001'),
(1002, '2023-01-15', 150.00, 'P002'),
(1003, '2023-02-10', 300.00, 'P001'),
(1004, '2023-02-25', 450.00, 'P003'),
(1005, '2023-03-01', 120.00, 'P002'),
(1006, '2023-03-15', 200.00, 'P004'),
(1007, '2023-04-01', 400.00, 'P001'),
(1008, '2023-04-12', 350.00, 'P002'),
(1009, '2023-04-22', 500.00, 'P003'),
(1010, '2023-05-05', 100.00, 'P001'),
(1011, '2023-05-18', 300.00, 'P004');

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;
    
    SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS total_revenue
FROM 
    online_sales
GROUP BY 
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY 
    total_revenue DESC
LIMIT 3;

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    month
ORDER BY 
    month;









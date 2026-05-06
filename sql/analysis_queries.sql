1. Top Customers by Spending
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

2. Customer Segmentation (High / Medium / Low)
SELECT customer_id,
       SUM(total_amount) AS total_spent,
       CASE 
           WHEN SUM(total_amount) > 5000 THEN 'High Value'
           WHEN SUM(total_amount) BETWEEN 2000 AND 5000 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS segment
FROM orders
GROUP BY customer_id;

3. Monthly Sales Trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

4. Best Selling Product Category
SELECT p.category,
       SUM(o.quantity) AS total_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sold DESC;

5. Average Order Value (AOV)
SELECT AVG(total_amount) AS avg_order_value
FROM orders;

6. Repeat Customers (Retention)
SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

Category Revenue Contribution (%)
SELECT 
    p.category,
    SUM(o.total_amount) AS revenue,
    ROUND(
        SUM(o.total_amount) * 100 / 
        (SELECT SUM(total_amount) FROM orders), 2
    ) AS percentage
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category;

Window Function (Ranking Customers)
SELECT customer_id,
       SUM(total_amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(total_amount) DESC) AS rank_position
FROM orders
GROUP BY customer_id;


CREATE DATABASE shopfast; 

USE shopfast;

-- 1. MAU Trend (last 12 full months)
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS Month,
    COUNT(DISTINCT customer_id) AS MAU
FROM orders
WHERE order_status = 'Completed'
GROUP BY month
ORDER BY month DESC
LIMIT 12;


-- 2. Top 5 Categories by Revenue


SELECT 
    oi.category,
    ROUND(SUM(oi.price + oi.shipping_cost), 2) AS total_revenue
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY oi.category
ORDER BY total_revenue DESC
LIMIT 5;


use shopfast;


-- 3. Avg CLV by Acquisition Channel

SELECT c.acquisition_channel,
    ROUND(AVG(customer_clv), 2) AS avg_clv
    
FROM (SELECT customer_id,
        SUM(total_amount) AS customer_clv
    FROM orders
    WHERE order_status = 'Completed'
    GROUP BY customer_id
) AS clv_table
JOIN customers c 
    ON clv_table.customer_id = c.customer_id
GROUP BY c.acquisition_channel;




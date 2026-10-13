-- Check 1: Row count of every imported table

SELECT 'customers' AS table_name, COUNT(*) AS row_count FROM customers 
UNION ALL SELECT 'orders', COUNT(*) FROM orders 
UNION ALL SELECT 'order_items', COUNT(*) FROM order_items 
UNION ALL SELECT 'order_payments', COUNT(*) FROM order_payments 
UNION ALL SELECT 'order_reviews', COUNT(*) FROM order_reviews 
UNION ALL SELECT 'products', COUNT(*) FROM products 
UNION ALL SELECT 'sellers', COUNT(*) FROM sellers 
UNION ALL SELECT 'product_category_name_translation', COUNT(*) FROM product_category_name_translation;

-- Check 2: order_id should be 32 characters, unique, no spaces or quotes 

SELECT COUNT(*) AS total_rows,COUNT(DISTINCT order_id) AS unique_orders,
MIN(LEN(order_id)) AS min_len,MAX(LEN(order_id)) AS max_len,
SUM(CASE WHEN order_id LIKE '% %' OR order_id LIKE '%"%' THEN 1 ELSE 0 END) 
AS bad_ids FROM orders;

-- Check 3: Every order should match a customer 

SELECT COUNT(*) AS matched_orders FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

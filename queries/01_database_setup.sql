CREATE DATABASE olist_db;
SELECT COUNT(*) FROM CUSTOMERS;

SELECT 'customers' AS table_name, COUNT(*) AS row_count FROM customers
UNION ALL SELECT 'orders', COUNT(*) FROM orders
UNION ALL SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL SELECT 'order_payments', COUNT(*) FROM order_payments
UNION ALL SELECT 'order_reviews', COUNT(*) FROM order_reviews
UNION ALL SELECT 'products', COUNT(*) FROM products
UNION ALL SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL SELECT 'product_category_name_translation', COUNT(*) FROM product_category_name_translation;

SELECT COUNT(*) FROM products;

SELECT TOP 5 * FROM orders;

SELECT COUNT(*) AS matched_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

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


--orders status type

select order_status, count(*) as total_orders from orders
group by order_status
order by total_orders desc;

--null check 

select sum(case when order_approved_at is null then 1 else 0 end)as null_approved,
	sum(case when order_delivered_carrier_date is null then 1 else 0 end)as null_carrier,
	sum(case when order_delivered_customer_date is null then 1 else 0 end)as null_delivered
from orders;


--Duplicate check 

select order_id, count(*) as cnt
from orders
group by order_id
having count(*) >1;

select customer_id, count(*) as cnt
from customers
group by customer_id
having count(*) >1;

select product_id, count(*) as cnt
from products
group by product_id
having count(*) >1;


--Delivered orders's view

go 
create view delivered_orders as 
select * from orders
where order_status = 'delivered'
go

--check

select count(*) from delivered_orders;

--change view name

EXEC sp_rename 'dbo.delivered_ordders', 'delivered_orders';

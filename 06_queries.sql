SELECT order_status, ROUND(AVG(review_score),2) AS avg_score
FROM orders_reviews_time
GROUP BY order_status
ORDER BY avg_score DESC;

SELECT payment_type, ROUND(AVG(payment_installments),2) AS payment_installments,
MIN(payment_installments), MAX(payment_installments)
FROM orders_payments_type
GROUP BY payment_type
ORDER BY payment_installments;

SELECT product_id, SUM(price) AS ganancia
FROM product_fact
GROUP BY product_id
ORDER BY ganancia DESC
LIMIT 10;

SELECT product_id, COUNT(price) AS cantidad_vendida
FROM product_fact
GROUP BY product_id
ORDER BY cantidad_vendida DESC
LIMIT 10;

SELECT product_category_name_english, COUNT(price) AS cantidad_vendida
FROM product_fact
GROUP BY product_category_name_english
ORDER BY cantidad_vendida DESC
LIMIT 10;

SELECT product_category_name_english, SUM(price) AS ganancia
FROM product_fact
GROUP BY product_category_name_english
ORDER BY ganancia DESC
LIMIT 10;

SELECT seller_id, SUM(price) AS ganancia
FROM product_fact
GROUP BY seller_id
ORDER BY ganancia DESC
LIMIT 10;

SELECT seller_id, COUNT(price) AS cantidad_vendida
FROM product_fact
GROUP BY seller_id
ORDER BY cantidad_vendida DESC
LIMIT 10;

SELECT order_id, SUM(price) AS precio
FROM product_fact
GROUP BY order_id
ORDER BY precio DESC
LIMIT 10;

SELECT customer_city, COUNT(*) AS number_customers
FROM customer_fact_geo
GROUP BY customer_city
ORDER BY number_customers DESC
LIMIT 10;

SELECT customer_state, COUNT(*) AS number_customers
FROM customer_fact_geo
GROUP BY customer_state
ORDER BY number_customers DESC
LIMIT 10;
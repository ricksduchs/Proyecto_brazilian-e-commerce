CREATE VIEW delivered_orders AS
SELECT *
FROM orders
WHERE order_status = 'delivered';

CREATE VIEW orders_reviews_time AS
SELECT
    o.order_id,
    r.review_id,
    r.review_score,
    o.order_status,
    o.order_purchase_timestamp,
	o.order_delivered_customer_date,
	o.order_estimated_delivery_date
FROM orders AS o
JOIN order_reviews AS r
ON o.order_id = r.order_id;

CREATE VIEW orders_payments_type AS
SELECT
    o.order_id,
    p.payment_type,
    p.payment_installments,
    o.order_status,
    o.order_purchase_timestamp,
	o.order_delivered_customer_date,
	o.order_estimated_delivery_date,
	p.payment_value
FROM orders AS o
JOIN order_payments AS p
ON o.order_id = p.order_id;

CREATE VIEW product_fact AS
SELECT
    o.order_id,
	o.order_item_id,
	p.product_id,
    s.seller_id,
    o.price,
    o.freight_value,
	p.product_category_name,
	s.seller_zip_code_prefix,
	s.seller_city,
	s.seller_state,
	c.product_category_name_english
FROM order_items AS o
JOIN products AS p
    ON o.product_id = p.product_id
JOIN sellers AS s
    ON o.seller_id = s.seller_id
JOIN product_category AS c
    ON p.product_category_name = c.product_category_name;

CREATE VIEW customer_fact_geo AS
SELECT
    o.order_id,
    c.customer_id,
    o.order_status,
	c.customer_city,
	c.customer_state,
    g.geolocation_zip_code_prefix,
	g.geolocation_city,
	g.geolocation_state
FROM orders AS o
JOIN customers AS c
ON o.customer_id = c.customer_id
JOIN geolocation AS g
ON c.customer_zip_code_prefix = g.geolocation_zip_code_prefix;
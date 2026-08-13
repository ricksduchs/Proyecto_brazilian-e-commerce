CREATE TABLE order_payments(
order_id VARCHAR(100),	
payment_sequential INTEGER,
payment_type VARCHAR(100),
payment_installments INTEGER,
payment_value NUMERIC(10,2)
);

CREATE TABLE order_reviews(
review_id VARCHAR(100),
order_id VARCHAR(100),
review_score INTEGER,
review_comment_title TEXT,
review_comment_message TEXT,
review_creation_date TIMESTAMP,
review_answer_timestamp TIMESTAMP
);

CREATE TABLE orders(
order_id VARCHAR(100),
customer_id	VARCHAR(100),
order_status VARCHAR(20),
order_purchase_timestamp TIMESTAMP,
order_approved_at TIMESTAMP,
order_delivered_carrier_date TIMESTAMP,
order_delivered_customer_date TIMESTAMP,
order_estimated_delivery_date TIMESTAMP
);

CREATE TABLE produtcs(
product_id	VARCHAR(100),
product_category_name VARCHAR(100),
product_name_lenght	INTEGER,
product_description_lenght INTEGER,
product_photos_qty INTEGER,
product_weight_g INTEGER,
product_length_cm DECIMAL(6,2),
product_height_cm DECIMAL(6,2),
product_width_cm DECIMAL(6,2)
);

CREATE TABLE rellers(
seller_id VARCHAR(100),
seller_zip_code_prefix	INTEGER,
seller_city	VARCHAR(100),
seller_state CHAR(2)
);

CREATE TABLE product_category(
product_category_name VARCHAR(100),
product_category_name_english VARCHAR(100)
);

CREATE TABLE geolocation(
geolocation_zip_code_prefix INTEGER,
geolocation_lat NUMERIC(10,8),
geolocation_lng NUMERIC(11,8),
geolocation_city VARCHAR(100),
geolocation_state VARCHAR(2)
);

CREATE TABLE order_items(
order_id VARCHAR(100),
order_item_id INTEGER,
product_id VARCHAR(100),
seller_id VARCHAR(100),
shipping_limit_date TIMESTAMP,
price NUMERIC(10,2),
freight_value NUMERIC(10,2)
);


CREATE INDEX idx_order_items_product
ON order_items(product_id);

CREATE INDEX idx_orders_customer
ON orders(customer_id);

CREATE INDEX idx_customers_city
ON customers(customer_city);


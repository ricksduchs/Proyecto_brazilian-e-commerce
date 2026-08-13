ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE order_reviews
ADD CONSTRAINT fk_orders_reviews_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_payments
ADD CONSTRAINT fk_orders_payments_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_orders_items_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_orders_items_products
FOREIGN KEY (product_id)
REFERENCES products(product_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_orders_items_sellers
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id);


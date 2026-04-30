-- Link Orders to Customers
Alter table olist_orders_dataset
add constraint fk_orders_customers
foreign key (customer_id) references olist_customers_dataset(customer_id);

-- Link Order Items to orders, products, and sellers
Alter table olist_order_items_dataset
add constraint fk_items_orders
foreign key (order_id) references olist_orders_dataset(order_id),
add constraint fk_items_products
foreign key (product_id) references olist_products_dataset(product_id),
add constraint fk_items_sellers
foreign key (seller_id) references olist_sellers_dataset(seller_id); 

-- Link Order Payments to Orders
Alter table olist_order_payments_dataset
add constraint fk_payments_orders
foreign key (order_id) references olist_orders_dataset(order_id);

-- Link order Reviews to orders
Alter table olist_order_reviews_dataset
add constraint fk_reviews_orders
foreign key (order_id) references olist_orders_dataset(order_id);
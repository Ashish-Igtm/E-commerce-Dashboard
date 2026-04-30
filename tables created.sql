-- 1. Customers Dataset
Drop Table if exists olist_customers_dataset cascade;
Create table olist_customers_dataset (
   customer_id text primary key,
   customer_unique_id text,
   customer_zip_code_prefix text,
   customer_city text,
   customer_state text
);

-- 2. Geolocation Dataset
Drop Table if exists olist_geolocation_dataset cascade;
Create table olist_geolocation_dataset (
   geolocation_zip_code_prefix text,
   geolocation_lat numeric,
   geolocation_lng numeric,
   geolocation_city text,
   geolocation_state text
);

-- 3. Products Dataset
Drop table if exists olist_products_dataset cascade;
create table olist_products_dataset (
    product_id TEXT PRIMARY KEY,
    product_category_name TEXT,
    product_name_length INTEGER,
    product_description_length INTEGER,
    product_photos_qty INTEGER,
    product_weight_g INTEGER,
    product_length_cm INTEGER,
    product_height_cm INTEGER,
    product_width_cm INTEGER
);

-- 4. Sellers Dataset
DROP TABLE IF EXISTS olist_sellers_dataset CASCADE;
CREATE TABLE olist_sellers_dataset (
    seller_id TEXT PRIMARY KEY,
    seller_zip_code_prefix TEXT,
    seller_city TEXT,
    seller_state TEXT
);
-- 5. Orders Dataset
DROP TABLE IF EXISTS olist_orders_dataset CASCADE;
CREATE TABLE olist_orders_dataset (
    order_id TEXT PRIMARY KEY,
    customer_id TEXT,
    order_status TEXT,
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);

-- 6. Order Items Dataset
DROP TABLE IF EXISTS olist_order_items_dataset CASCADE;
CREATE TABLE olist_order_items_dataset (
    order_id TEXT,
    order_item_id INTEGER,
    product_id TEXT,
    seller_id TEXT,
    shipping_limit_date TIMESTAMP,
    price NUMERIC,
    freight_value NUMERIC
);

-- 7. Order Payments Dataset
DROP TABLE IF EXISTS olist_order_payments_dataset CASCADE;
CREATE TABLE olist_order_payments_dataset (
    order_id TEXT,
    payment_sequential INTEGER,
    payment_type TEXT,
    payment_installments INTEGER,
    payment_value NUMERIC
);

-- 8. Order Reviews Dataset
DROP TABLE IF EXISTS olist_order_reviews_dataset CASCADE;
CREATE TABLE olist_order_reviews_dataset (
    review_id TEXT,
    order_id TEXT,
    review_score INTEGER,
    review_comment_title TEXT,
    review_comment_message TEXT,
    review_creation_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP
);

-- 9. Product Category Name Translation
DROP TABLE IF EXISTS product_category_name_translation CASCADE;
CREATE TABLE product_category_name_translation (
    product_category_name TEXT PRIMARY KEY,
    product_category_name_english TEXT
);


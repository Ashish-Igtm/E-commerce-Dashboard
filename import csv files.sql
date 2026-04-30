--copy com


-- COPY olist_geolocation_dataset FROM 'Z:/archive/olist_geolocation_dataset.csv' DELIMITER ',' CSV HEADER;

COPY olist_products_dataset FROM 'D:\DATA SCIENCE\SQL\Project\archive\olist_products_dataset.csv' DELIMITER ',' CSV HEADER;

COPY olist_sellers_dataset FROM 'D:\DATA SCIENCE\SQL\Project\archive\olist_sellers_dataset.csv' DELIMITER ',' CSV HEADER;

COPY olist_orders_dataset FROM 'D:\DATA SCIENCE\SQL\Project\archive\olist_orders_dataset.csv' DELIMITER ',' CSV HEADER;

COPY olist_order_items_dataset FROM 'D:\DATA SCIENCE\SQL\Project\archive\olist_order_items_dataset.csv' DELIMITER ',' CSV HEADER;

COPY olist_order_payments_dataset FROM 'D:\DATA SCIENCE\SQL\Project\archive\olist_order_payments_dataset.csv' DELIMITER ',' CSV HEADER;

COPY olist_order_reviews_dataset FROM 'D:\DATA SCIENCE\SQL\Project\archive\olist_order_reviews_dataset.csv' DELIMITER ',' CSV HEADER;

COPY product_category_name_translation FROM 'D:\DATA SCIENCE\SQL\Project\archive\product_category_name_translation.csv' DELIMITER ',' CSV HEADER;

Select * from olist_geolocation_dataset;
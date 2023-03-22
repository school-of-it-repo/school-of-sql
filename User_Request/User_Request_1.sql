/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------
Find most expensive product from each product and category

*/
drop table schoolofit.Product;
CREATE TABLE schoolofit.Product (
    product_name varchar(255) ,
    product_category varchar(255),
    Manufacturer varchar(255),
    price int
);

INSERT INTO schoolofit.Product VALUES ('Phone', 'SmartPhone', 'Apple', 1000);
INSERT INTO schoolofit.Product VALUES ('Phone', 'SmartPhone', 'Samsung', 9000);
INSERT INTO schoolofit.Product VALUES ('Phone', 'SmartPhone', 'MI', 12000);
INSERT INTO schoolofit.Product VALUES ('Phone', 'Basic', 'Samsung', 100);
INSERT INTO schoolofit.Product VALUES ('Phone', 'Basic', 'moto', 200);
INSERT INTO schoolofit.Product VALUES ('Phone', 'Basic', 'MI', 200);
INSERT INTO schoolofit.Product VALUES ('WashingMachine', 'Frontload', 'LG', 2000);
INSERT INTO schoolofit.Product VALUES ('WashingMachine', 'Frontload', 'Samsung', 19000);

with _find_most_expensive_product as (
select
	product_name
	,product_category
	,Manufacturer
	,price
	,dense_rank () over (partition by product_name,product_category order by price desc) _most_expensive_product_rank
from
	schoolofit.Product
)
select
	product_name
	,product_category
	,Manufacturer
	,price
from
	_find_most_expensive_product
where
	_most_expensive_product_rank= 1
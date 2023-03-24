/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Group similar location based on user_id and continuous period.
For example user id 1 stay in USA continuously from JAN to APRIL.
Fill ‘NA’ if there is NO record found.  Example. User id 1 , there is NO entry for MAY  .
 So ‘NA’ for MAY



*/
CREATE TABLE schoolofit.orders (
	order_id int,
	status_date date NULL,
	status varchar(30) NULL
);
INSERT INTO schoolofit.orders (order_id,status_date,status) VALUES
	 (11700,'2016-01-03','New'),
	 (11700,'2016-01-04','Inventory Check'),
	 (11700,'2016-01-05','Inventory Check'),
	 (11700,'2016-01-06','Inventory Check'),
	 (11700,'2016-01-07','Inventory Check'),
	 (11700,'2016-01-08','Inventory Check'),
	 (11700,'2016-01-09','Awaiting Signoff'),
	 (11700,'2016-01-10','Awaiting Signoff'),
	 (11700,'2016-01-11','Awaiting Signoff'),
	 (11700,'2016-01-12','In Warehouse');
INSERT INTO schoolofit.orders (order_id,status_date,status) VALUES
	 (11700,'2016-01-13','In Warehouse'),
	 (11700,'2016-01-14','In Warehouse'),
	 (11700,'2016-01-15','Awaiting Signoff'),
	 (11700,'2016-01-16','Awaiting Signoff'),
	 (11700,'2016-01-17','Payment Pending'),
	 (11700,'2016-01-18','Payment Pending'),
	 (11700,'2016-01-19','Awaiting Signoff'),
	 (11700,'2016-01-20','Awaiting Signoff'),
	 (11700,'2016-01-21','Delivery'),
	 (11700,'2016-01-22','Delivery');

select
    *
from
    schoolofit.orders;
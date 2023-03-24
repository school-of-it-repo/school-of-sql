/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Write an SQL query to show order status summary



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
/

select
  order_id,
  status,
  lag(status_date) over (partition by order_id order by status_date)  from_date,
  status_date to_date
from (
  select
    order_id,
    status_date,
    status,
    lag(status) over (partition by order_id order by status_date) lag_status,
    lead(status) over (partition by order_id order by status_date) lead_status
  from schoolofit.ORDERS
  ) temp
where lag_status is null
       or lead_status is null
       or lead_status <> status
order by status_date
/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Find available seats in the theater



*/

create table schoolofit.seat
(
 seat_row int
 ,seat_no int
 ,status varchar(20)
);


INSERT INTO schoolofit.seat (seat_row,seat_no,status) VALUES
	 (1,1,'ASSIGNED'),
	 (1,2,'FREE'),
	 (1,3,'ASSIGNED'),
	 (1,4,'FREE'),
	 (1,5,'FREE'),
	 (1,6,'ASSIGNED'),
	 (1,7,'ASSIGNED'),
	 (1,8,'FREE'),
	 (1,9,'FREE'),
	 (1,10,'FREE');
INSERT INTO schoolofit.seat (seat_row,seat_no,status) VALUES
	 (1,11,'ASSIGNED'),
	 (1,12,'ASSIGNED'),
	 (1,13,'ASSIGNED'),
	 (1,14,'FREE'),
	 (1,15,'ASSIGNED'),
	 (2,11,'FREE'),
	 (2,12,'FREE'),
	 (2,13,'FREE'),
	 (2,14,'FREE'),
	 (2,15,'FREE');
INSERT INTO schoolofit.seat (seat_row,seat_no,status) VALUES
	 (2,1,'ASSIGNED'),
	 (2,2,'ASSIGNED'),
	 (2,3,'ASSIGNED'),
	 (2,4,'ASSIGNED'),
	 (2,5,'ASSIGNED'),
	 (2,6,'ASSIGNED'),
	 (2,7,'ASSIGNED'),
	 (2,8,'ASSIGNED'),
	 (2,9,'ASSIGNED'),
	 (2,10,'ASSIGNED');
/
select * from schoolofit.seat s
/

with _data as
(
 select
 	seat_row
 	,seat_no
 	,status
 	,row_number() over (partition by seat_row,status order by seat_no ) as _row_number
 from
 	schoolofit.seat
 )
 , _find_buckets as (
 select
 	seat_row
 	,seat_no
 	,status
 	, seat_no - _row_number as _bucket
 from
 	_data
 )
,_base_data as (
 select
 	seat_row
 	,status
 	--,_bucket
 	,min(seat_no) _seat_from
 	,max(seat_no) as _seat_to
 	,(max(seat_no) - min(seat_no))+1 as _available_seats

 from
 	_find_buckets s
 where
 	status ='FREE'
 group by
 	seat_row ,status,_bucket
 )

 select
 	seat_row
 	,status
 	,sum(_available_seats) as total_no_of_available_seats
 	,string_agg(
 		case when _available_seats=1 then _seat_from::TEXT
 			 else concat_ws('-',_seat_from,_seat_to)
 		end
 		, ',' order by _seat_from
 	) as available_seats

 from
 	_base_data
 where _available_seats >=2
 	group by seat_row,status


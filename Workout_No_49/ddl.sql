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
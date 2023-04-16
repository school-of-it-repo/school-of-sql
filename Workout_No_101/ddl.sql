/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Find Total Score





*/
create table schoolofit.match_score
(
current_over int,
current_ball int,
ball_type varchar(100),
on_crease varchar(100),
score int
);

insert into schoolofit.match_score
(current_over,current_ball,ball_type,on_crease,score)
values
(0,1,null,'Rohit Sharma',4),
(0,2,null,'Rohit Sharma',2),
(0,3,null,'Rohit Sharma',2),
(0,4,null,'Rohit Sharma',6),
(0,5,null,'Rohit Sharma',1),
(0,6,null,'Shubman Gill',4),

(1,1,null,'Rohit Sharma',1),
(1,2,null,'Shubman Gill',6),
(1,3,null,'Shubman Gill',4),
(1,4,null,'Shubman Gill',3),
(1,5,null,'Rohit Sharma',1),
(1,6,null,'Shubman Gill',6),

(2,1,null,'Rohit Sharma',1),
(2,2,null,'Shubman Gill',1),
(2,3,null,'Rohit Sharma',1),
(2,4,null,'Shubman Gill',3),
(2,5,null,'Rohit Sharma',1),
(2,6,null,'Shubman Gill',6),


(3,1,'OUT','Rohit Sharma',0),
(3,2,null,'Virat Kohli',1),
(3,3,null,'Shubman Gill',4),
(3,4,null,'Shubman Gill',4),
(3,5,'OUT','Shubman Gill',0),
(3,6,null,'Virat Kohli',6),

(4,1,null,'KL Rahul',1),
(4,2,null,'Virat Kohli',3),
(4,3,null,'KL Rahul',4),
(4,4,null,'KL Rahul',3),
(4,5,null,'Virat Kohli',0),
(4,6,null,'Virat Kohli',4),

(5,1,null,'KL Rahul',6),
(5,2,'OUT','KL Rahul',0),
(5,3,null,'Hardik Pandya',4),
(5,4,null,'Hardik Pandya',3),
(5,5,'OUT','Virat Kohli',0),
(5,6,null,'Suryakumar Yadav ',6);

select * from schoolofit.match_score;
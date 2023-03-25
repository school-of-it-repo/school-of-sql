/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Write an SQL query to find user level metrics that
no of events scheduled, no of events attended  and not attended.


Find Total sum and give ranking based on sum


*/

CREATE TABLE schoolofit.STUDENTS(ROLLNO int,NAME VARCHAR(200));
CREATE TABLE schoolofit.EXAM_SCORES(ROLLNO INT, SUBJECT VARCHAR(100),MARKS INT);

INSERT INTO schoolofit.STUDENTS values (101,'Gaurav Singh');
INSERT INTO schoolofit.STUDENTS values(102,'Pratima Malviya');
INSERT INTO schoolofit.STUDENTS values(103,'Shakti Reddy');
INSERT INTO schoolofit.STUDENTS values (104,'Bhushan Patil');

INSERT INTO schoolofit.exam_scores values(101,'Maths',96);
INSERT INTO schoolofit.exam_scores values(102,'Maths',91);
INSERT INTO schoolofit.exam_scores values(101,'Science',40);
INSERT INTO schoolofit.exam_scores values(104,'Maths',56);
INSERT INTO schoolofit.exam_scores values(103,'Maths',87);
INSERT INTO schoolofit.exam_scores values(102,'Science',91);
INSERT INTO schoolofit.exam_scores values(103,'Science',99);
INSERT INTO schoolofit.exam_scores values(104,'Science',76);



select
	*
from
	schoolofit.EXAM_SCORES;


select
	students.ROLLNO,students.name
	,sum(score.MARKS)
	,dense_rank () over(order by sum(score.MARKS) desc) as _ranking
from
	schoolofit.exam_scores score
inner join
	schoolofit.STUDENTS students on
		students.ROLLNO= score.ROLLNO
group by students.ROLLNO,students.name
/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------
Understanding CTAS ( Create Table As Select)
*/

CREATE TABLE schoolofit.users (
	"id" SERIAL, --serial keyword similar like Auto increment another DB engine
	"name" VARCHAR(50) NOT NULL,
	"surname" VARCHAR(50) NOT NULL,
	"email" VARCHAR(50),
	CONSTRAINT _id_schoolofit_users primary key (id)

);

INSERT INTO schoolofit.users
	( "name", "surname", "email")
VALUES
	('John', 'Stewart', 'john@email.com'),
	('Chris', 'Brown', 'chris@email.com'),
	('Kate', 'Lewis', 'kate@email.com'),
	('Ailisa', 'Gomez', 'ailisa@email.com'),
	('Gwendolyn', 'James', 'gwen@email.com'),
	('Simon', 'Collins', 'simon@email.com'),
	('Taylor', 'Martin', 'taylor@email.com'),
	('Andrew', 'Thompson', 'andrew@email.com');

/
SELECT
    *
FROM schoolofit.users;
/

CREATE TABLE schoolofit.users_copy AS SELECT * FROM schoolofit.users;
/
SELECT
    *
FROM schoolofit.users_copy;

/
INSERT INTO schoolofit.users_copy
	(id,name,surname,email)
values
	(1,'demo','demo','demo@gmail.com');
/

--Able to insert duplicate records into users_copy table.
--It will NOT enforce you to insert duplicate records
/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------
Write an SQL query to find top dishes based on most likes

*/


CREATE TABLE schoolofit.food (
	user_id serial4 NOT NULL,
	likes varchar(100) NULL
);
/
INSERT INTO schoolofit.food (likes) VALUES
	 ('Kheer,Khichdi,Kofta,Kulfi falooda'),
	 ('Kheer,Khichdi,Dosa'),
	 ('Kheer,Khichdi,Litti chokha,Naan'),
	 ('Naan,Dosa'),
	 ('Pakhala,Palak paneer,Rajma'),
	 ('Samose,Sooji halwa,Sattu ki roti,Biryani,Dosa,Masala Dosa'),
	 ('Sevai,Vada,Wheat upma,Uppittu');
/
select
    user_id
    ,likes
 from
    schoolofit.food;
/

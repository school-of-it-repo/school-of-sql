/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Write a query to find the node type of Binary Tree ordered by the value of the node.
Output one of the following for each node:
Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.






*/
drop table schoolofit.bst;
create table schoolofit.bst
(
	node int,
	parent int
);

insert into schoolofit.bst
values
(1,2),
(3,2),
(6,8),(9,8),(2,5),(8,5),(5,null);

select node,parent from schoolofit.bst
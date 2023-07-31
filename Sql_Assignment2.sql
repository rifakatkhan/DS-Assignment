CREATE DATABASE SQL_Assignment2 ;
USE Sql_Assignment2 ;

CREATE TABLE A_table(Salesman_Id int Not Null,
			Name varchar(20) Not Null,
     			City varchar(20) Not Null);
                
INSERT INTO A_table(Salesman_Id,name,City) VALUES (5001, 'James Hoog', 'New York'),
                                                  (5002, 'Nail Knite', 'Paris'),
                                                  (5005, 'Pit Alex', 'London'),
												  (5006, 'Mc Lyon', 'Paris'),
                                                  (5003, 'Lauson Hen', 'San Jose');

Select * From A_table;

CREATE TABLE B_table(Cust_Id int Not Null,
			Cust_Name varchar(20) Not Null,
     			City varchar(20) Not Null,
                Salesman_Id int Not Null);

INSERT INTO B_table(Cust_id,Cust_name,City,Salesman_Id) VALUES (3002, 'Nick Rimando', 'New York', 5001),
                                                               (3007, 'Brad Davis', 'New York', 5001),
															   (3005, 'Graham Zusi', 'California', 5002),
                                                               (3004, 'Fabian Johnson', 'Paris', 5006),
                                                               (3009, 'Geoff Cameron', 'Berlin', 5003);
															
Select * From B_table;

##  Right join

SELECT A.Salesman_Id, A.name, A.City, B.Cust_id, B.Cust_name, B.City AS Cust_City
FROM A_table as A
RIGHT JOIN B_table as B ON A.Salesman_Id = B.Salesman_Id;

## Left Join

SELECT A.Salesman_Id, A.name, A.City, B.Cust_id, B.Cust_name, B.City AS Cust_City
FROM A_table as A
LEFT JOIN B_table as B ON A.Salesman_Id = B.Salesman_Id;

# Inner join

SELECT A.Salesman_Id,A.name,A.City,B.Cust_id,B.Cust_name 
 FROM A_table as A INNER JOIN  B_table as B ON A.Salesman_Id = B.Salesman_Id;
 
 
 ## Left Join

SELECT A.Salesman_Id, A.name, A.City, B.Cust_id, B.Cust_name, B.City AS Cust_City
FROM A_table as A
LEFT JOIN B_table as B ON A.Salesman_Id = B.Salesman_Id;

## Intersect

select * from A_table 
where A_table.Salesman_Id in (Select B_table.Salesman_Id from B_table);


## Union

SELECT Salesman_Id,city
FROM A_table
UNION 
SELECT Salesman_Id,City
FROM B_table;

## Union all

SELECT Salesman_Id,city
FROM A_table
UNION all
SELECT Salesman_Id,City
FROM B_table;

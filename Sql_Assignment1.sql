CREATE DATABASE SQL_Assignment1 ;
USE Sql_Assignment1 ;

CREATE TABLE store_sales(month varchar(20) Not Null, prod_name varchar(20) Not Null,sales int Not Null);

INSERT INTO store_sales(month,prod_name,sales) VALUES ("jan","fruits",45000),("jan","vegetables",67000),
                                                      ("jan","dairy",55000),("feb","fruits",42000),
                                                      ("feb","vegetables",32000),("feb","dairy",52000),
                                                      ("march","fruits",61000),("march","vegetables",43000),
                                                      ("march","dairy",92000);
                                                      
	SELECT * FROM store_sales;
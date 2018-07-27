1)structred query language to manage/manipulate data in the relational database
2)Distinct select distinct city
3)IS Null IS NOT NULL
4)clauses:-
5)constraits:-primary key, foreign key,check,default,null,unique
3)IN and between cluases
4)group by used with the aggregate functions min,max,avg,sum,count
5)having is used with group by clause
6)limit(0,2) offset,no of records
7)nth maximum salary:-
select * from salary where
(3) IN

8)Joins:-left,right,self,full,cross
select * from salary inner join customer on id=id where
select * from table t1,table t2 where t1.id<> t2.id
9)subquery:-query inside query
10)default port :-3306
11)view is virtual table runs while program is executing
create view v1 as (select * from table)
12)indexing:-to fetch data faster
unique,clustered,non clustered
create index name on salary()
max 16 cloumns
13)stored procedure:-set of queries that can be execited at once when required
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;
EXEC SelectAllCustomers;



14)trigger:-queries that can be run before and after add/update/delete
15)DDL:-create
16)DCL:-grant and revoke
17)DML:-insert/update/delete

18)delete:-delete data from table and data can be rollback, truncate is also same but not data can't be rollback


19)operators:-AND OR NOT
20)Insert into tab_name values()
21)create tab_name(id int primary key,id foreign key references )
22)'a_%_%' 	Finds any values that start with "a" and are at least 3 characters in length
23)operators:-IN,Between,AND,OR,NOT,EXISTS
24)clauses:-where,select,insert,
25)conditional statements:-
SELECT OrderID, Quantity, IF(Quantity>10, "MORE", "LESS")
FROM OrderDetails; 
26)foreign key
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
); 

27)triggers,stored procedures,views,index
	(a)triggers:-A database trigger is special stored procedure that is run when specific actions occur within a database. Most triggers are 			defined to run when changes are made to a table's data. Triggers can be defined to run instead of or after DML (Data 			Manipulation Language) actions such as INSERT, UPDATE, and DELETE.
CREATE OR REPLACE TRIGGER display_salary_changes 
BEFORE DELETE OR INSERT OR UPDATE ON customers 
FOR EACH ROW 
WHEN (NEW.ID > 0) 
DECLARE 
   sal_diff number; 
BEGIN 
   sal_diff := :NEW.salary  - :OLD.salary; 
   dbms_output.put_line('Old salary: ' || :OLD.salary); 
   dbms_output.put_line('New salary: ' || :NEW.salary); 
   dbms_output.put_line('Salary difference: ' || sal_diff); 
END; 
/ 

28)constraints and operators and clauses
	constraints:-primary,foreign,check,default,unique
	operators:-And,or,not,in,between
	clauses:-where,order by,group by,having,distinct,from
29)maximum salary
	select amt from salary s1 where
	3=(select count(distinct(amt)) from salary s2 where s2.salary >s1.slary) 

30)datatypes in sql:-int,var,varchar,char,bigint,smallint,float

31)case:-SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN "The quantity is greater than 30"
    WHEN Quantity = 30 THEN "The quantity is 30"
    ELSE "The quantity is something else"
END

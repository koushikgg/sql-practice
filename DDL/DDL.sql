postgres=# \c koushik
You are now connected to database "koushik" as user "postgres".

koushik=# 
koushik=# CREATE TABLE students ( 
koushik(# id SERIAL PRIMARY KEY,
koushik(# NAME VARCHAR(100),
koushik(# SUB VARCHAR(10),
koushik(# MARKS NUMERIC
koushik(# );
CREATE TABLE
koushik=# \dt
           List of relations
 Schema |    Name    | Type  |  Owner   
--------+------------+-------+----------
 public | students   | table | postgres
 public | your_table | table | postgres
(2 rows)


koushik=# select * from students
select * from students;
ERROR:  syntax error at or near "select"
LINE 2: select * from students;
        ^
koushik=# SELECT * FROM STUDENTS;
 id | name | sub | marks 
----+------+-----+-------
(0 rows)

koushik=# ALTER TABLE STUDENTS ADD COLUMN PERCENTAGE NUMERIC;
ALTER TABLE
koushik=# SELECT * FROM STUDENTS;
 id | name | sub | marks | percentage 
----+------+-----+-------+------------
(0 rows)

koushik=# CREATE TABLE EMPLOYEE(
koushik(# NAME VARCHAR(20),
koushik(# ID SERIAL PRIMARY KEY);
CREATE TABLE
koushik=# DROP TABLE EMPLOYEE;
DROP TABLE

koushik=# CREATE TABLE EMPLOYEES(
NAME VARCHAR(20),
ID SERIAL PRIMARY KEY);
CREATE TABLE

koushik=# TRUNCATE TABLE EMPLOYEES;
TRUNCATE TABLE


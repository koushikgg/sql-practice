
koushik=# SELECT * FROM DEPARTMENTS;
 id | department 
----+------------
  1 | ECE
  2 | CSE
  3 | TCE
  4 | EEE
(4 rows)

koushik=# CREATE TABLE STUDENTS(  
ID SERIAL PRIMARY KEY,
NAME VARCHAR(20),
DEPARTMENT_ID INT,    
FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS(ID)        
);
CREATE TABLE



koushik=# INSERT INTO STUDENTS(NAME ,DEPARTMENT_ID) VALUES ('VIRAT',2);
INSERT 0 1
koushik=# INSERT INTO STUDENTS(NAME ,DEPARTMENT_ID) VALUES ('ABD',1);
INSERT 0 1
koushik=# INSERT INTO STUDENTS(NAME ,DEPARTMENT_ID) VALUES ('GAYLE',3);
INSERT 0 1
koushik=# SELECT *
koushik-# FROM STUDENTS
koushik-# INNER JOIN DEPARTMENTS
koushik-# ON STUDENTS.DEPARTMENT_ID = DEPARTMENTS.ID;
 id | name  | department_id | id | department 
----+-------+---------------+----+------------
  1 | VIRAT |             2 |  2 | CSE
  2 | ABD   |             1 |  1 | ECE
  3 | GAYLE |             3 |  3 | TCE
(3 rows)




koushik=# SELECT *
FROM STUDENTS
LEFT JOIN DEPARTMENTS
ON STUDENTS.DEPARTMENT_ID = DEPARTMENTS.ID;
 id | name  | department_id | id | department 
----+-------+---------------+----+------------
  1 | VIRAT |             2 |  2 | CSE
  2 | ABD   |             1 |  1 | ECE
  3 | GAYLE |             3 |  3 | TCE
(3 rows)


koushik=# INSERT INTO STUDENTS(NAME) VALUES ('KOUSHIK');
INSERT 0 1
koushik=# SELECT *                                       
FROM STUDENTS
LEFT JOIN DEPARTMENTS
ON STUDENTS.DEPARTMENT_ID = DEPARTMENTS.ID;
 id |  name   | department_id | id | department 
----+---------+---------------+----+------------
  1 | VIRAT   |             2 |  2 | CSE
  2 | ABD     |             1 |  1 | ECE
  3 | GAYLE   |             3 |  3 | TCE
  4 | KOUSHIK |               |    | 
(4 rows)



koushik=# SELECT *
FROM STUDENTS
RIGHT JOIN DEPARTMENTS
ON STUDENTS.DEPARTMENT_ID = DEPARTMENTS.ID;
 id | name  | department_id | id | department 
----+-------+---------------+----+------------
  1 | VIRAT |             2 |  2 | CSE
  2 | ABD   |             1 |  1 | ECE
  3 | GAYLE |             3 |  3 | TCE
    |       |               |  4 | EEE
(4 rows)



koushik=# SELECT *                                      
FROM STUDENTS
FULL JOIN DEPARTMENTS
ON STUDENTS.DEPARTMENT_ID = DEPARTMENTS.ID;
 id |  name   | department_id | id | department 
----+---------+---------------+----+------------
  1 | VIRAT   |             2 |  2 | CSE
  2 | ABD     |             1 |  1 | ECE
  3 | GAYLE   |             3 |  3 | TCE
  4 | KOUSHIK |               |    | 
    |         |               |  4 | EEE
(5 rows)

koushik=#
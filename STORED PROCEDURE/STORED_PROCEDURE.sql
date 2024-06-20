koushik=# CREATE PROCEDURE INSERT_VALUE(NAME_VALUE VARCHAR(20), DEPARTMENT_VALUE NUMERIC)   
LANGUAGE PLPGSQL
AS $$
BEGIN                                                                          
INSERT INTO STUDENTS(NAME, DEPARTMENT_ID) VALUES (NAME_VALUE,DEPARTMENT_VALUE);
END;
$$;
CREATE PROCEDURE


koushik=# CALL INSERT_VALUE('MAXI',4);
CALL



koushik=# SELECT * FROM STUDENTS;
 id |  name   | department_id 
----+---------+---------------
  1 | VIRAT   |             2
  2 | ABD     |             1
  3 | GAYLE   |             3
  4 | KOUSHIK |              
  5 | MAXI    |             4
(5 rows)


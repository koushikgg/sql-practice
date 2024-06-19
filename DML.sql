koushik=# SELECT * FROM STUDENTSLIST;
 id | name | sub | marks | percentage 
----+------+-----+-------+------------
(0 rows)

koushik=# INSERT INTO STUDENTSLIST (NAME, SUB, MARKS, PERCENTAGE) VALUES (VIRAT, MATHS, 100, 100);
ERROR:  column "virat" does not exist



LINE 1: ...UDENTSLIST (NAME, SUB, MARKS, PERCENTAGE) VALUES (VIRAT, MAT...
                                                             ^
koushik=# INSERT INTO STUDENTSLIST (NAME, SUB, MARKS, PERCENTAGE) VALUES ('VIRAT', 'MATHS', 100, 100);
INSERT 0 1

koushik=# SELECT * FROM STUDENTSLIST;
 id | name  |  sub  | marks | percentage 
----+-------+-------+-------+------------
  1 | VIRAT | MATHS |   100 |        100
(1 row)



koushik=# UPDATE STUDENTSLIST SET MARKS =200 WHERE NAME='VIRAT';
UPDATE 1
koushik=# SELECT * FROM STUDENTSLIST;
 id | name  |  sub  | marks | percentage 
----+-------+-------+-------+------------
  1 | VIRAT | MATHS |   200 |        100
(1 row)



koushik=# DELETE FROM STUDENTSLIST WHERE NAME='VIRAT';
DELETE 1
koushik=# SELECT * FROM STUDENTSLIST;
 id | name | sub | marks | percentage 
----+------+-----+-------+------------
(0 rows)


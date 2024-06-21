koushik=# begin;
BEGIN


koushik=*# INSERT into students (name, department_id) VALUES ('dk', 2);
INSERT 0 1


koushik=*# savepoint p1;
SAVEPOINT


koushik=*# INSERT into students (name, department_id) VALUES ('siraj', 4);
INSERT 0 1


koushik=*# savepoint p2;
SAVEPOINT
koushik=*# select * from students;
 id |  name   | department_id 
----+---------+---------------
  1 | VIRAT   |             2
  2 | ABD     |             1
  3 | GAYLE   |             3
  4 | KOUSHIK |              
  5 | MAXI    |             4
  6 | dk      |             2
  7 | siraj   |             4
(7 rows)


koushik=!# rollback to savepoint p1;
ROLLBACK


koushik=*# commit;
COMMIT
koushik=# 
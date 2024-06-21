koushik=# create view ece_table as
koushik-# select * from students
koushik-# where department_id=1;
CREATE VIEW
koushik=# select * from ece_table;
 id | name | department_id 
----+------+---------------
  2 | ABD  |             1
(1 row)


koushik=# 
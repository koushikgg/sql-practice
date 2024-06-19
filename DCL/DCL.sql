koushik=# SELECT * FROM STUDENTSLIST;
 id | name | sub | marks | percentage 
----+------+-----+-------+------------
(0 rows)

koushik=# CREATE USER user WITH PASSWORD '1234';
ERROR:  syntax error at or near "user"
LINE 1: CREATE USER user WITH PASSWORD '1234';
                    ^

koushik=# CREATE USER newuser WITH PASSWORD '1234';
CREATE ROLE


koushik=# GRANT SELECT, INSERT ON employees TO newuser;
GRANT


koushik=# REVOKE SELECT, INSERT ON employees FROM newuser;
REVOKE
koushik=# 
koushik=# SELECT * FROM STUDENTS;
 id |  name   | department_id 
----+---------+---------------
  1 | VIRAT   |             2
  2 | ABD     |             1
  3 | GAYLE   |             3
  4 | KOUSHIK |              
  5 | MAXI    |             4
(5 rows)

koushik=# ^C
koushik=# ^C
koushik=# select count(name) from students;
 count 
-------
     5
(1 row)

koushik=# select sum(id) from students;
 sum 
-----
  15
(1 row)

koushik=# select avg(id) from students;
        avg         
--------------------
 3.0000000000000000
(1 row)

koushik=# select min(id) from students;
 min 
-----
   1
(1 row)

koushik=# select max(id) from students;
 max 
-----
   5
(1 row)

koushik=# select upper(name) from students;
  upper  
---------
 VIRAT
 ABD
 GAYLE
 KOUSHIK
 MAXI
(5 rows)

koushik=# select lower(name) from students;
  lower  
---------
 virat
 abd
 gayle
 koushik
 maxi
(5 rows)

koushik=# select round(5/2) from students;
 round 
-------
     2
     2
     2
     2
     2
(5 rows)

koushik=# select round(id/2) from students;
 round 
-------
     0
     1
     1
     2
     2
(5 rows)

koushik=# select concat(name,'-',id) from students;
  concat   
-----------
 VIRAT-1
 ABD-2
 GAYLE-3
 KOUSHIK-4
 MAXI-5
(5 rows)

koushik=# select substring(name from1 for 4) from students;
ERROR:  syntax error at or near "from1"
LINE 1: select substring(name from1 for 4) from students;
                              ^
koushik=# select substring(name from 1 for 4) from students;
 substring 
-----------
 VIRA
 ABD
 GAYL
 KOUS
 MAXI
(5 rows)

koushik=# select length('koushik');
 length 
--------
      7
(1 row)

koushik=# select abs(-10);
 abs 
-----
  10
(1 row)

koushik=# select to_date('10-2-2020' ,'mm-dd-yyyy');
  to_date   
------------
 2020-10-02
(1 row)

koushik=# select now();
               now                
----------------------------------
 2024-06-20 12:59:17.090359+05:30
(1 row)

koushik=# select current_user;
 current_user 
--------------
 postgres
(1 row)

koushik=# select version;
ERROR:  column "version" does not exist
LINE 1: select version;
               ^
koushik=# select version();




create function multiple_num(num_1 int, num_2 int)
postgres-# return int
postgres-# AS $$
postgres$# begin
postgres$# return num_1 + num_2;
postgres$# end;
postgres$# $$;
ERROR:  syntax error at or near "AS"
LINE 3: AS $$
        ^
postgres=# create function multiple_num(num_1 int, num_2 int)
return int
as $$
begin
return num_1 + num_2;
end;
$$;
ERROR:  syntax error at or near "as"
LINE 3: as $$
        ^
postgres=# create function multiple_num(num_1 int, num_2 int)
return int language plpgsql
as $$
begin
return num_1 + num_2;
end;
$$;
ERROR:  syntax error at or near "language"
LINE 2: return int language plpgsql
                   ^
postgres=# create function multiple_num(num_1 int, num_2 int)
returns int language plpgsql
as $$
begin
return num_1 + num_2;
end;
$$;
CREATE FUNCTION
postgres=# multiple_num(10,3);
ERROR:  syntax error at or near "multiple_num"
LINE 1: multiple_num(10,3);
        ^
postgres=# select multiple_num(10,3);
 multiple_num 
--------------
           13
(1 row)

postgres=# create function multiple_nums(num_1 int, num_2 int)
returns int language plpgsql
as $$
begin
return num_1 * num_2;
end;
$$;
CREATE FUNCTION
postgres=# select multiple_nums(10,3);
 multiple_nums 
---------------
            30
(1 row)

postgres=# 

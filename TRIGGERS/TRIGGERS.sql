koushik=# create function students_backup_func()
returns trigger
language plpgsql
AS $$
declare                                  
begin
insert into students_backup (id, name, department_id) values (old.id, old.name, old.department_id);
return new;
end;
$$;
CREATE FUNCTION


koushik=# create trigger students_trigger
before delete or update
on students
for each row 
execute procedure students_backup_func();
CREATE TRIGGER



koushik=# delete from students where name='koushik';
DELETE 0


koushik=# delete from students where id=4;
DELETE 0
koushik=# select * from students_bachup;
ERROR:  relation "students_bachup" does not exist
LINE 1: select * from students_bachup;
                      ^
koushik=# select * from students_backup;
 id |  name   | department_id 
----+---------+---------------
  4 | KOUSHIK |              
(1 row)

koushik=# delete from students where id=5;
DELETE 0
koushik=# select * from students_backup;
 id |  name   | department_id 
----+---------+---------------
  4 | KOUSHIK |              
  5 | MAXI    |             4
(2 rows)

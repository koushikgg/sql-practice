You are now connected to database "koushik" as user "postgres".
koushik=# create function get_student_info()
koushik-# returns void AS $$
koushik$# declare
koushik$# student_record record;
koushik$# student_cursor cursor for select * from students;
koushik$# begin
koushik$# open student_cursor;
koushik$# loop
koushik$# fetch student_cursor into student_record;
koushik$# exit when not found;
koushik$# raise notice 'id:%, name:%, department_id:%',student_record.id, student_record.name, student_record.department_id;
koushik$# end loop;
koushik$# close student_cursor;
koushik$# end;
koushik$# $$ language plpgsql;
CREATE FUNCTION
koushik=# select get_student_info();
NOTICE:  id:1, name:VIRAT, department_id:2
NOTICE:  id:2, name:ABD, department_id:1
NOTICE:  id:3, name:GAYLE, department_id:3
NOTICE:  id:4, name:KOUSHIK, department_id:<NULL>
NOTICE:  id:5, name:MAXI, department_id:4
NOTICE:  id:6, name:dk, department_id:2
 get_student_info 
------------------
 
(1 row)

koushik=# 
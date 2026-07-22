-- program to delete data from emp table

set serveroutput on 

declare 

empid        number(3);

begin

delete from emp where emp_id = &empid;

commit; 

dbms_output.put_line('data removed');

end;
/
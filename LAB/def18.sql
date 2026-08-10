--display data with the use of LIKE Operator using cursor FOR Loop.

set serveroutput on

declare

    Cursor Bob IS select id, name, prize from product where name LIKE  '_e%';
    i product%ROWTYPE;

begin

for i IN Bob

loop

    dbms_output.put_line('Product ID is: '|| i.id);
    dbms_output.put_line('Product Name is: '|| i.name);
    dbms_output.put_line('Product Price is: '|| i.prize);

end loop;
end;
/
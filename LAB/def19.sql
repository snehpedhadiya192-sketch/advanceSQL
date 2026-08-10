--show the records using ORDER BY clause using cursor.

set serveroutput on

declare

	Cursor s1 IS select * from product order by prize desc;
	d product%ROWTYPE;

begin

open s1;

loop
	fetch s1 INTO d;
	exit when NOT s1%FOUND;
	dbms_output.put_line('Product ID :'||d.id||'Product Name :'||d.name||'Product Price:'||d.prize);

end loop;

close s1;

end;
/
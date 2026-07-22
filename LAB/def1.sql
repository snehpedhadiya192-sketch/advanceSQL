-- w.a.p that accept principle amount , rate of int.. and no of year and find simple int..

set severoutput on 

declare 

price number := &price;
rate number :=&rate;
year number :=&year;
intrest number;

begin
intrest := price*rate*year/100;

dbms_output.put_line('item price is '||price||',rate of intrest is '||rate||' for '||year||' year = '||intrest);


end;
/
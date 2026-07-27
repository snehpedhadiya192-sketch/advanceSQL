--  Write a program to generate the numbers using LOOP, FOR LOOP and WHILE LOOP up to the number inputted by the user. 

set serveroutput on;

declare

    i number := 1;
    n number := &input_number;

begin

    -- 1. Basic LOOP
    dbms_output.put_line('=== BASIC LOOP ===');
    loop
        exit when i > n;
        dbms_output.put_line(i);
        i := i + 1;
    end loop;

    -- Reset counter
    i := 1;

    -- 2. WHILE LOOP
    dbms_output.put_line('=== WHILE LOOP ===');
    while i <= n loop
        dbms_output.put_line(i);
        i := i + 1;
    end loop;

    -- 3. FOR LOOP
    dbms_output.put_line('=== FOR LOOP ===');
    for j in 1..n loop
        dbms_output.put_line(j);
    end loop;

end;
/
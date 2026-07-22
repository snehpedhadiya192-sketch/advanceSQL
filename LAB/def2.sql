-- Write a PL/SQL block to calculate the square and cube of the given number.

set serveroutput on 

DECLARE

    num    NUMBER := &num; 
    square NUMBER;
    cube   NUMBER;

BEGIN
    
    square := num * num;
    cube   := num * num * num;

    DBMS_OUTPUT.PUT_LINE('The given number is : ' || num);
    DBMS_OUTPUT.PUT_LINE('Square of ' || num || ' is : ' || square);
    DBMS_OUTPUT.PUT_LINE('Cube of ' || num || ' is : ' || cube);

END;
/
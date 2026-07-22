-- Write a PL/SQL block which displays the gross salary of employees as per user input EID. (Consider an EMP table with EID, EName, Deptno, Deptname Gender, Age, BasicSal) with appropriate data types.) Gross_Salary: BASICSAL + (DA + HRA + Medical) – PF. 
-- Rules: HRA = 15% of basic, DA = 50% of basic, Medical = Rs. 500, PF = 10% of basic.
 
SET SERVEROUTPUT ON;

DECLARE

    id NUMBER := &enter_eid;
    sal NUMBER;

BEGIN

    SELECT BasicSal INTO sal FROM EMP WHERE EID = id;

    -- Formula: Basic + DA(50%) + HRA(15%) + Medical(500) - PF(10%)
    DBMS_OUTPUT.PUT_LINE('Gross Salary = ' || (sal + 0.50*sal + 0.15*sal + 500 - 0.10*sal));
END;
/
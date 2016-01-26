CREATE TABLE analysis(ename varchar2(20), years number(2), sal number(8,2));



define B_ENAME = Austin

DECLARE
	E_DUE_FOR_RAISE EXCEPTION;
	V_HIREDATE employees.hire_date%type;
	V_ENAME employees.last_name%type := INITCAP( '& B_ENAME');
	V_SAL employees.salary%type;
	V_YEARS NUMBER(2);

BEGIN
	SELECT last_name,salary,hire_date
	INTO V_ENAME,V_SAL,V_HIREDATE
	FROM employees WHERE last_name = V_ENAME;
	V_YEARS := MONTHS_BETWEEN(SYSDATE,V_HIREDATE) /12;
	IF V_SAL < 3500 AND V_YEARS > 5 THEN 
		RAISE E_DUE_FOR_RAISE;
	ELSE
		DBMS_OUTPUT.PUT_LINE('NOT due for a raise');
	end if;
	EXCEPTION
		WHEN E_DUE_FOR_RAISE THEN
			INSERT INTO analysis(ENAME,YEARS,SAL)
			VALUES(V_ENAME,V_YEARS,V_SAL);
end;
/
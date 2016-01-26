


--sol_02_05




DECLARE
   v_today DATE:=SYSDATE;
   v_tomorrow v_today%TYPE;
   
	v_basic_percent NUMBER :=45; --variables at part c).
	v_pf_percent NUMBER:=12;
	
	v_fname	VARCHAR2(15);
	v_emp_sal NUMBER(10);
	v_contribution NUMBER(10,2);
	
BEGIN
	--a)
   --:b_basic_percent:=45;
   --:b_pf_percent:=12;
	
	--d)
	SELECT first_name, salary
	INTO v_fname,v_emp_sal FROM employees
	WHERE employee_id=110;
	
	
   DBMS_OUTPUT.PUT_LINE(' Hello '|| v_fname); --part e)
   DBMS_OUTPUT.PUT_LINE(' Sallary '|| v_emp_sal);
   /*DBMS_OUTPUT.PUT_LINE('TODAY IS : '|| v_today);
   DBMS_OUTPUT.PUT_LINE('TOMORROW IS : ' || v_tomorrow);
	*/
	
	v_contribution :=v_emp_sal*((v_basic_percent/100)*(v_pf_percent/100)); --part f)
	DBMS_OUTPUT.PUT_LINE(' Contribution '|| v_contribution);
	
 END;
/

/*	b)
PRINT  b_basic_percent
PRINT b_pf_percent
*/




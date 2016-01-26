set serveroutput on;

DECLARE v_father_name VARCHAR(20):='Patrick';
		v_date_of_birth DATE :='20-Apr-1972';

BEGIN
	DECLARE 
	v_child_name VARCHAR(8):='Mike';
	
	
	BEGIN
	
	DBMS_OUTPUT.PUT_LINE('FATHER''S NAME '|| v_father_name);
	DBMS_OUTPUT.PUT_LINE('Date of Birth '|| v_date_of_birth);
	DBMS_OUTPUT.PUT_LINE('Child''s Name '||v_child_name);
	
	END;
	v_date_of_birth :='12-Dec-2002';
		
	DBMS_OUTPUT.PUT_LINE('Date of Birth '||v_date_of_birth);
END;
/ 

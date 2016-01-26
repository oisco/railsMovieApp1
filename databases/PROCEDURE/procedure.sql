DECLARE 
	v_event VARCHAR(15);
	
BEGIN
	v_event:= q '|Fathers Day';
	DBMS_OUTPUT.PUT_LINE('3rd Sunday of June is :
	'||v_event);
	
	v_event:= q 'Mothers Day'; 
	
	DBMS_OUTPUT.PUT_LINE('2nd Sunday of May is :
	'||v_event);
	
END;
/
	
SET SERVEROUTPUT ON;
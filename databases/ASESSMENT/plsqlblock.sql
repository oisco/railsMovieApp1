set serveroutput on
DECLARE
	v_message VARCHAR2(35);
	v_date_written VARCHAR2(35);

BEGIN
	v_message:='This is my pl/sql program';
	v_date_written:=sysdate;
	
	INSERT INTO temp( temp_id,message,date_written)
	VALUES('',v_message,v_date_written);
	
	DBMS_OUTPUT.PUT_LINE('message :'||v_message);
	DBMS_OUTPUT.PUT_LINE('date written : '||v_date_written);
END;
/
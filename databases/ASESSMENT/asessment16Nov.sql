-- SQL to create table
CREATE TABLE TEMP(
	TEMP_ID NUMBER(6) NOT NULL,
	MESSAGE VARCHAR(35),
	DATE_WRITTEN DATE
	);
	
--SQL to create sequence
create sequence seq_temp_id 
minvalue 0 maxvalue 100
increment by 1;

--SQL to create trigger

 Create or replace trigger update_temp_seq 
BEFORE INSERT ON TEMP  for each row
   BEGIN
       if (:new.temp_id is null) then		   
       	 select seq_temp_id.nextval into :new.temp_id from dual;

	  end if;

   END;   
/



--PL/SQL block
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
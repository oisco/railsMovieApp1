 Create or replace trigger update_temp_seq 
BEFORE INSERT ON TEMP  for each row
   BEGIN
       if (:new.temp_id is null) then		   
       	 select seq_temp_id.nextval into :new.temp_id from dual;

	  end if;

   END;   
/



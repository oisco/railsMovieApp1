 BEGIN
 
		FOR i IN 1..10 lOOP
			if i!=6 and i !=8 
			THEN
			INSERT INTO messages(results)VALUES(i);
			END IF;
		END LOOP;
END;
/
commit;

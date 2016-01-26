-- lab_05_01.sql
DROP TABLE messages;
CREATE TABLE messages (results VARCHAR2(80));












BEGIN
FOR i in 1..10 LOOP
  IF i = 6 or i = 8 THEN
    null;
  ELSE
    INSERT INTO messages(results)
    VALUES (i);
 END IF;
END LOOP;
 COMMIT;
END;
/
SELECT * FROM messages;

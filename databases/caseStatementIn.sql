SET VERIFY OFF
SET SERVEROUTPUT ON

DECLARE 
	v_grade CHAR(1) :=UPPER('&grade');
	appraisal VARCHAR(20);

BEGIN
	appraisal :=CASE
		WHEN v_grade='A' THEN 'Excellent'
		WHEN v_grade in('B','C') THEN 'Very Good'
		ELSE 'No such grade'
		END;
		
DBMS_OUTPUT.PUT_LINE ('Grade :'||v_grade||'
					Appraisal '||appraisal);
					
END;
/
								
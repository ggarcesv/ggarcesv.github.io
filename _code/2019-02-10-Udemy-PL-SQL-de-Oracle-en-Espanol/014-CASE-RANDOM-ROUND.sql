set serveroutput on;

DECLARE

    Ran number := round(dbms_random.value(0,5));
    
BEGIN
	DBMS_OUTPUT.PUT_LINE('Numero Random: '|| Ran);

CASE 
	WHEN Ran = 0 THEN 
	DBMS_OUTPUT.PUT_LINE('Cero');
	WHEN Ran = 1 THEN 
	DBMS_OUTPUT.PUT_LINE('Uno');
	WHEN Ran = 2 THEN 
	DBMS_OUTPUT.PUT_LINE('Dos');
	WHEN Ran = 3 THEN 
	DBMS_OUTPUT.PUT_LINE('Tres');
	WHEN Ran = 4 THEN 
	DBMS_OUTPUT.PUT_LINE('Cuatro');

	ELSE
	DBMS_OUTPUT.PUT_LINE('Cinco');
END CASE;

END;
/


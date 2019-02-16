SET SERVEROUTPUT ON;
DECLARE

Ran NUMBER:=ROUND(DBMS_RANDOM.VALUE(1,3));

Error_1 EXCEPTION;
Error_2 EXCEPTION;
Error_3 EXCEPTION;


BEGIN

CASE 
    WHEN Ran = 1 THEN
    RAISE Error_1;
    
    WHEN Ran = 2 THEN
    RAISE Error_2;
   
    WHEN Ran = 3 THEN
    RAISE Error_3;
END CASE;

dbms_output.put_line('Nunca me ejecutare');

EXCEPTION
    WHEN Error_1 THEN
    dbms_output.put_line('No manejamos el error 1');
    
    WHEN Error_2 THEN
    dbms_output.put_line('No manejamos el error 2');
   
    WHEN Error_3 THEN
    dbms_output.put_line('No manejamos el error 3');

END;
/
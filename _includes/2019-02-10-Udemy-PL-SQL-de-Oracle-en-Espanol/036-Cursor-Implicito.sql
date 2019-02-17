SET SERVEROUTPUT ON;
DECLARE

BEGIN
UPDATE EMPLEADOS set actualizado = sysdate where id >5;
dbms_output.put_line('Afectados : '|| SQL%ROWCOUNT);

IF (SQL%FOUND) THEN
dbms_output.put_line('Encontro registros');
ELSE
dbms_output.put_line('No encontro registros');
END IF;

END;
/
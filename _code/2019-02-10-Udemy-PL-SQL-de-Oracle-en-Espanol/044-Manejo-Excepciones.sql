SET SERVEROUTPUT ON;
DECLARE

Nombre NVARCHAR2(100);

BEGIN

SELECT NOMBRE INTO NOMBRE FROM prj_003_emp WHERE ID=50;
dbms_output.put_line(NOMBRE);

EXCEPTION
WHEN no_data_found THEN
dbms_output.put_line('No encontro empleado con ese codigo');
/*
WHEN others THEN
dbms_output.put_line('Algo raro ocurrio');
*/

END;
/
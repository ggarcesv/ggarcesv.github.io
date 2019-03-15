set serveroutput on;

DECLARE
Cantidad number;
Usuario nvarchar2(100);

BEGIN

SELECT user, count(*) INTO Usuario, Cantidad FROM dual;

dbms_output.put_line('Usuario : ' || Usuario);
dbms_output.put_line('Cantidad : ' || Cantidad);


END;
/
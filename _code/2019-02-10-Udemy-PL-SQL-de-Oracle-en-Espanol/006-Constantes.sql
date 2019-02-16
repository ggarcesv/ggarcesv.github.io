set serveroutput on;

DECLARE
-- Constantes

PI CONSTANT number :=3.141559;

-- Variables
Area number;
Radio number;

BEGIN
Radio :=7;
Area := PI * (Radio*Radio);

dbms_output.put_line('Area : ' || Area ||' cm2');
dbms_output.put_line('Area : ' || ROUND(Area) ||' cm2');
dbms_output.put_line('Area : ' || ROUND(Area,2) ||' cm2');
dbms_output.put_line('Area : ' || ROUND(Area,4) ||' cm2');

END;
/
SET serveroutput on;
DECLARE
type NotasArray is varray(4) of number;
Notas NotasArray := NotasArray(95,60,75,85);
Promedio number(6,2) := 0;

BEGIN
<<ciclo_tabla1>>
FOR I IN 1..4 LOOP
    Promedio := Promedio+Notas(i);
END LOOP ciclo_tabla1;

Promedio := Promedio/4;
dbms_output.put_line(Promedio); 

END;
/
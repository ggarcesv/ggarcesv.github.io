/*
El factorial de un numero es igual a la multiplicación de cada uno de las unidades que lo conforman, es decir:
- factorial de 2 = 2 x 1, igual a 2
- factorial de 3 = 3 x 2 x 1, igual a 6
- factorial de 4 = 4 x 3 x 2 x 1, igual a 24
- factorial de 5 = 5 x 4 x 3 x 2 x 1, igual a 120
*/
SET serveroutput on;

DECLARE
numero number := 4; -- 4x3x2x1
factorial number;

BEGIN
factorial:=numero;
WHILE numero > 1 LOOP
    numero:=numero-1;
	factorial := factorial*numero;
END LOOP;

dbms_output.put_line(factorial);
END;
/
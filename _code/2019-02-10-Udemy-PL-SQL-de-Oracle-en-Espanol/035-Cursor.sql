set serveroutput on;

DECLARE
Promedio number;

BEGIN

FOR FILA IN (SELECT * FROM NOTAS ORDER BY NOMBRE ASC) LOOP
Promedio:= (fila.nota1+fila.nota2+fila.nota3+fila.nota4)/4;
dbms_output.put_line('Nombre: ' || Fila.Nombre || 'Promedio : '||Promedio);

END LOOP;

END;
/
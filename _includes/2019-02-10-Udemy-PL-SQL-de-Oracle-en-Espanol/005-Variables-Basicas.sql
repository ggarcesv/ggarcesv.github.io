set serveroutput on;

DECLARE
-- Definicion de funciones y variables
Salario number :=1500;
NombreEmpleado nvarchar2(100);
Activo boolean;
Fecha date;

BEGIN

NombreEmpleado :='Giuliano Garces';
Activo :=true;
Fecha := '31-12-2018';

dbms_output.put_line('Nombre: ' || NombreEmpleado);
dbms_output.put_line('Salario: ' || Salario);
dbms_output.put_line('Fecha: ' || Fecha);

-- Cuando se ingresa un boleano en un output se genera un error
-- dbms_output.put_line('Activo: ' || Activo);

dbms_output.put_line('Activo: ' || case when Activo then 'Es verdadero' else 'Es falso' end);
END;
/
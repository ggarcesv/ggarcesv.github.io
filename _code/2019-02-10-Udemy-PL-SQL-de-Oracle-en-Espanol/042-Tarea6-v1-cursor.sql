SET SERVEROUTPUT ON;
DECLARE

Nombre nvarchar2(200);
DiasTrabajados Number;
Salario Number;
SalarioDiario Number;
SalarioPago Number;

CURSOR c_empleado IS
SELECT Nombre, Salario, DiasTrabajados From EMPLEADOS ORDER BY Nombre ASC;

BEGIN
OPEN c_empleado;
LOOP
FETCH c_empleado INTO NOMBRE, SALARIO, DiasTrabajados;
EXIT WHEN c_empleado%NOTFOUND;
SalarioDiario := SALARIO/30;
SalarioPago := SalarioDiario*DiasTrabajados;

dbms_output.put_line('Empleado: -> ' ||NOMBRE);
dbms_output.put_line('Salario Diario -> ' ||SalarioDiario);
dbms_output.put_line('Dias Trabajados -> ' ||DiasTrabajados);
dbms_output.put_line('Salario a Pagar -> ' ||SalarioPago);

END LOOP;
CLOSE c_empleado;




END;
/
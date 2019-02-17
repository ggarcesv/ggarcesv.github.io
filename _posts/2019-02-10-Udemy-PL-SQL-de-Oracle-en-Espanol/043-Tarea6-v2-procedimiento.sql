SET SERVEROUTPUT ON;
DECLARE

empleado EMPLEADOS%rowtype;

CURSOR c_empleado IS
SELECT * From EMPLEADOS ORDER BY Nombre ASC;

-- Procedimiento impresion empleados
PROCEDURE IMPRIMIR_EMPLEADO(empleado EMPLEADOS%rowtype) IS
SalarioDiario Number;
SalarioPago Number;
BEGIN
SalarioDiario := EMPLEADO.SALARIO/30;
SalarioPago := SalarioDiario*EMPLEADO.DiasTrabajados;
dbms_output.put_line('==================');
dbms_output.put_line('Empleado: -> ' ||EMPLEADO.NOMBRE);
dbms_output.put_line('Salario Diario -> ' ||ROUND(SalarioDiario));
dbms_output.put_line('Dias Trabajados -> ' ||EMPLEADO.DiasTrabajados);
dbms_output.put_line('Salario a Pagar -> ' ||ROUND(SalarioPago));
END;
-- Fin Procedimiento impresion empleados

BEGIN
OPEN c_empleado;
LOOP
FETCH c_empleado INTO empleado;
EXIT WHEN c_empleado%NOTFOUND;
IMPRIMIR_EMPLEADO(EMPLEADO);
END LOOP;
CLOSE c_empleado;
END;
/
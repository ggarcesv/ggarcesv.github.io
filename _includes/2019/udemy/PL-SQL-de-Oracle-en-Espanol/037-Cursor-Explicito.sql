SET SERVEROUTPUT ON;
DECLARE

Nombre nvarchar2(200);
Salario Number;

CURSOR c_empleado IS
SELECT Nombre, Salario 
FROM EMPLEADOS 
ORDER BY Nombre ASC;

BEGIN
OPEN c_empleado;
LOOP
FETCH c_empleado INTO NOMBRE, SALARIO;
EXIT WHEN c_empleado%NOTFOUND;
dbms_output.put_line(Nombre || ' -> ' ||Salario);
END LOOP;
CLOSE c_empleado;

END;
/
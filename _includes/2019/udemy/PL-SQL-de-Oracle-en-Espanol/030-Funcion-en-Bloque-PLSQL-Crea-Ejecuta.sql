-- SELECT avg(salario) from EMPLEADOS

SET SERVEROUTPUT ON;

DECLARE

SalarioPromedio NUMBER :=0;

-- Inicio Funcion Obtener Promedio
    FUNCTION FN_OBTENER_PROMEDIO
        RETURN NUMBER IS
        Promedio NUMBER :=0;
        BEGIN
        SELECT AVG(SALARIO) INTO Promedio FROM EMPLEADOS;
        RETURN Promedio;
    END;
-- Fin Funcion Obtener Promedio

BEGIN -- PL Principal

SalarioPromedio := FN_OBTENER_PROMEDIO();
DBMS_OUTPUT.PUT_LINE('El salario promedio es : '|| SalarioPromedio);
END;
/
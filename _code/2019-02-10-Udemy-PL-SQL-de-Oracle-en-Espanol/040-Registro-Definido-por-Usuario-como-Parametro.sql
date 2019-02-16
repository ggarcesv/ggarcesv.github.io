SET SERVEROUTPUT ON;

DECLARE

	TYPE Carro IS RECORD(
		Marca NVARCHAR2(100),
		Modelo NVARCHAR2(100),
		Puertas NUMBER
		);

	Mazda Carro;
	Toyota Carro;

-- Procedimiento de impresion
PROCEDURE IMPRIMIR_CARRO(Car_Var CARRO) IS
BEGIN
DBMS_OUTPUT.PUT_LINE(Car_Var.Marca);
DBMS_OUTPUT.PUT_LINE(Car_Var.Modelo);
DBMS_OUTPUT.PUT_LINE(Car_Var.Puertas);
END;
-- Fin Procedimiento de impresion
BEGIN

Mazda.Marca :='Mazda';
Mazda.Modelo :='Mazda 3';
Mazda.Puertas :=4;

Toyota.Marca :='Toyota';
Toyota.Modelo :='Prado';
Toyota.Puertas :=5;

IMPRIMIR_CARRO (Mazda);
IMPRIMIR_CARRO (Toyota);
END;
/
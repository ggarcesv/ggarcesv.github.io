SET SERVEROUTPUT ON;

DECLARE

	TYPE Carro IS RECORD(
		Marca NVARCHAR2(100),
		Modelo NVARCHAR2(100),
		Puertas NUMBER
		);

	Mazda Carro;
	Toyota Carro;

BEGIN

Mazda.Marca :='Mazda';
Mazda.Modelo :='Mazda 3';
Mazda.Puertas :=4;

Toyota.Marca :='Toyota';
Toyota.Modelo :='Prado';
Toyota.Puertas :=5;

DBMS_OUTPUT.PUT_LINE(Mazda.Modelo);

END;
/
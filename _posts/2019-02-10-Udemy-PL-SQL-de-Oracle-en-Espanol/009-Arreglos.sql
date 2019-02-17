set serveroutput on;

DECLARE
-- Definimos el tipo de arreglos
	TYPE AlumnoArray IS VARRAY(5) OF NVARCHAR2(100);
	TYPE NotasArray IS VARRAY(5) OF NUMBER;

-- Inicializa con un nombre y se le asigna el tipo de arreglo  
	Alumnos AlumnoArray;
	Notas NotasArray;

BEGIN

-- Asignan valores al arreglo
	Alumnos := AlumnoArray('Fernando','Melissa','Andrea','Antonio','Clarissa');
	Notas := NotasArray(90,100,95,89,75);	

	dbms_output.put_line(Alumnos(1));
	dbms_output.put_line(Notas(1));
	dbms_output.put_line(Alumnos(2));
	dbms_output.put_line(Notas(2));
    dbms_output.put_line(Alumnos(3));
	dbms_output.put_line(Notas(3));

	Notas(1) :=10;

	dbms_output.put_line(Alumnos(1));
	dbms_output.put_line(Notas(1));
END;
/